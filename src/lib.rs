use zed_extension_api as zed;

struct OatV1Extension;

impl zed::Extension for OatV1Extension {
    fn new() -> Self where Self: Sized {
        Self
    }
}

zed::register_extension!(OatV1Extension);