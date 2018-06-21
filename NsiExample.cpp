#include <nsi.h>
#include <nsi.hpp>

void RenderPlane(NSIContext_t ctx, bool ipr)
{
    // Wrap the context by C++ class.
    //
    NSI::Context nsi(ctx);

    // Create plane's transform and connect it to the scene root.
    //
    const std::string plane_xform_handle("plane1");

    nsi.Create(plane_xform_handle, "transform");
    nsi.Connect(plane_xform_handle, "", NSI_SCENE_ROOT, "objects");

    // Set transform data, which is identity.
    //
    double plane_xform_matrix_data[16] =
    {
        1, 0, 0, 0,
        0, 1, 0, 0,
        0, 0, 1, 0,
        0, 0, 0, 1
    };

    NSI::ArgumentList plane_xform_attrs;
    plane_xform_attrs.push(NSI::Argument::New("transformationmatrix")
        ->SetType(NSITypeDoubleMatrix)
        ->SetCount(1)
        ->SetValuePointer(plane_xform_matrix_data));

    nsi.SetAttributeAtTime(plane_xform_handle, 0.0, plane_xform_attrs);

    // Create plane's mesh and connect it to the last transform.
    //
    const std::string plane_shape_handle("planeShape1");

    nsi.Create(plane_shape_handle, "mesh");
    nsi.Connect(plane_shape_handle, "", plane_xform_handle, "objects");

    // Set mesh data.
    //
    int plane_shape_nvertices_data[1] =
    {
        4
    };

    int plane_shape_indices_data[4] =
    {
        0, 1, 3, 2
    };

    float plane_shape_P_data[12] = // 3 * 4
    {
        -50, 0, 50,
        50, 0, 50,
        - 50, 0, - 50,
        50, 0, - 50
    };

    int plane_shape_N_data[12] = // 3 * 4
    {
        0, 1, 0,
        0, 1, 0,
        0, 1, 0,
        0, 1, 0
    };

    NSI::ArgumentList plane_shape_attrs;

    plane_shape_attrs.push(NSI::Argument::New("nvertices")
        ->SetType(NSITypeInteger)
        ->SetCount(1)
        ->SetValuePointer(plane_shape_nvertices_data));

    plane_shape_attrs.push(NSI::Argument::New("P")
        ->SetType(NSITypePoint)
        ->SetCount(4)
        ->SetFlags(NSIParamInterpolateLinear)
        ->SetValuePointer(plane_shape_P_data));

    plane_shape_attrs.push(NSI::Argument::New("P.indices")
        ->SetType(NSITypeInteger)
        ->SetCount(4)
        ->SetValuePointer(plane_shape_indices_data));

    plane_shape_attrs.push(NSI::Argument::New("N")
        ->SetType(NSITypeNormal)
        ->SetCount(4)
        ->SetFlags(NSIParamInterpolateLinear)
        ->SetValuePointer(plane_shape_N_data));

    plane_shape_attrs.push(NSI::Argument::New("N.indices")
        ->SetType(NSITypeInteger)
        ->SetCount(4)
        ->SetValuePointer(plane_shape_indices_data));

    nsi.SetAttribute(plane_shape_handle, plane_shape_attrs);

    // Create camera's transform and shape.
    //
    const std::string camera_xform_handle("camera1");

    nsi.Create(camera_xform_handle, "transform");
    nsi.Connect(camera_xform_handle, "", NSI_SCENE_ROOT, "objects");

    const std::string camera_shape_handle("cameraShape1");

    nsi.Create(camera_shape_handle, "perspectivecamera");
    nsi.Connect(camera_shape_handle, "", camera_xform_handle, "objects");

    // Setup camera shape attributes.
    //
    double camera_xform_data[16] =
    {
        0.93358042649719764, 1.3877787807814457e-17, - 0.35836794954531109, 0,
        - 0.1874512327642639, 0.85229022253306053, - 0.48832715663753939, 0,
        0.3054334994666898, 0.52306918908930788, 0.79568146945180607, 0,
        18.881641061705942, 34.423595099383853, 48.612789621738415, 1
    };
    
    nsi.SetAttribute(camera_xform_handle, NSI::DoubleMatrixArg("transformationmatrix", camera_xform_data));

    NSI::ArgumentList camera_shape_attrs;

    double camera_shape_clipping_range_data[2] =
    {
        0.1,
        10000
    };
    camera_shape_attrs.Add(NSI::Argument::New("clippingrange")
        ->SetType(NSITypeDouble)
        ->SetCount(2)
        ->SetValuePointer(camera_shape_clipping_range_data));

    nsi.SetAttribute(camera_shape_handle, camera_shape_attrs);

    // Create a screen to receive pixels, which is connected to the camera shape.
    //
    const std::string screen_handle("screen1");

    nsi.Create(screen_handle, "screen");
    nsi.Connect(screen_handle, "", camera_shape_handle, "screens");

    NSI::ArgumentList screen_attrs;

    int screen_resolution_data[2] = { 1024, 512 };
    screen_attrs.Add(NSI::Argument::New("resolution")
        ->SetArrayType(NSITypeInteger, 2)
        ->CopyValue(screen_resolution_data, sizeof(screen_resolution_data)));

    float screen_crop_data[2][2] =
    {
        {0, 0},
        {1, 1}
    };
    screen_attrs.Add(NSI::Argument::New("crop")
        ->SetArrayType(NSITypeFloat, 2)
        ->SetCount(2)
        ->SetValuePointer(screen_crop_data));

    screen_attrs.Add(new NSI::IntegerArg("oversampling", 32));
    screen_attrs.Add(new NSI::FloatArg("pixelaspectratio", 1));

    double screen_window_data[2][2] =
    {
        {-1, -0.5},
        {1, 0.5}
    };
    screen_attrs.Add(NSI::Argument::New("screenwindow")
        ->SetArrayType(NSITypeDouble, 2)
        ->SetCount(2)
        ->CopyValue(screen_window_data, sizeof(screen_window_data)));

    nsi.SetAttribute(screen_handle, screen_attrs);

    // Create a output driver with output layer to write out the pixels.
    //
    const std::string layer_handle("outputlayer1");

    nsi.Create(layer_handle, "outputlayer");
    nsi.Connect(layer_handle, "", screen_handle, "outputlayers");

    nsi.SetAttribute(layer_handle, (NSI::StringArg("variablename", "Ci"),
        NSI::StringArg("layertype", "color"),
        NSI::StringArg("scalarformat", "half"),
        NSI::IntegerArg("withalpha", 1),
        NSI::StringArg("filter", "blackman-harris"),
        NSI::DoubleArg("filterwidth", 4.0)));

    const std::string driver_handle("driver1");

    nsi.Create(driver_handle, "outputdriver");
    nsi.SetAttribute(driver_handle, NSI::StringArg("drivername", "idisplay"));
    nsi.SetAttribute(driver_handle, NSI::StringArg("imagefilename", "NsiExample.idisplay"));

    nsi.Connect(driver_handle, "", layer_handle, "outputdrivers");

    // Render.
    //
    if (ipr)
    {
        NSI::ArgumentList args;
        args.Add(new NSI::CStringPArg("action", "start"));
        args.Add(new NSI::IntegerArg("interactive", ipr));
        args.Add(new NSI::IntegerArg("progressive", ipr));

        nsi.RenderControl(args);
    }
    else
    {
        nsi.RenderControl((NSI::CStringPArg("action", "start"),
            NSI::IntegerArg("progressive", 0)));

        nsi.RenderControl(NSI::CStringPArg("action", "wait"));
    }
}

int main(int argc, char *argv[])
{
    bool ipr = false;
    if (argc >= 2)
    {
        ipr = (atoi(argv[1]) != 0 ? true : false);
    }

    // Create the context.
    //
    NSIContext_t ctx = NSIBegin(0, NULL);

    // Render a plane in the scene.
    //
    RenderPlane(ctx, ipr); 

    // Terminate the context.
    //
    NSIEnd(ctx), ctx = NSI_BAD_CONTEXT;

    return 0;
}
