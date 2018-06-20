#include <nsi.h>
#include <nsi.hpp>

void RenderPlane(NSIContext_t ctx, bool ipr)
{
    // Wrap the context by C++ class.
    //
    NSI::Context nsi(ctx);

    // Create plane.
    //

    // Create camera.
    //

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
