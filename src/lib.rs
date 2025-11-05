use zed_extension_api as zed;

struct OatExtension;

impl zed::Extension for OatExtension {
    fn new() -> Self where Self: Sized {
        Self
    }
}

zed::register_extension!(OatExtension);