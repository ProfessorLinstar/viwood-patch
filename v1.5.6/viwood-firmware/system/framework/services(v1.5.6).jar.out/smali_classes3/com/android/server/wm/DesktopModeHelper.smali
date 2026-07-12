.class public abstract Lcom/android/server/wm/DesktopModeHelper;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"


# static fields
.field public static final ENFORCE_DEVICE_RESTRICTIONS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "persist.wm.debug.desktop_mode_enforce_device_restrictions"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/DesktopModeHelper;->ENFORCE_DEVICE_RESTRICTIONS:Z

    return-void
.end method

.method public static canEnterDesktopMode(Landroid/content/Context;)Z
    .locals 1

    .line 102
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_DESKTOP_WINDOWING_MODE:Landroid/window/DesktopModeFlags;

    .line 103
    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeEnabledByDevOption(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static canInternalDisplayHostDesktops(Landroid/content/Context;)Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111006c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDesktopModeDevOptionsSupported(Landroid/content/Context;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101ca

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDesktopModeEnabledByDevOption(Landroid/content/Context;)Z
    .locals 1

    .line 78
    invoke-static {}, Landroid/window/DesktopModeFlags;->isDesktopModeForcedEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeDevOptionsSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isDesktopModeSupported(Landroid/content/Context;)Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101cb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z
    .locals 3

    .line 84
    invoke-static {}, Lcom/android/server/wm/DesktopModeHelper;->shouldEnforceDeviceRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PROJECTED_DISPLAY_DESKTOP_MODE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeSupported(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->canInternalDisplayHostDesktops(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static shouldEnforceDeviceRestrictions()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/wm/DesktopModeHelper;->ENFORCE_DEVICE_RESTRICTIONS:Z

    return v0
.end method
