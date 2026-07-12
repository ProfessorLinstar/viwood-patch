.class public Lcom/android/server/wm/AppCompatSandboxingPolicy;
.super Ljava/lang/Object;
.source "AppCompatSandboxingPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSandboxingPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public sandboxBoundsIfNeeded(Landroid/content/res/Configuration;I)V
    .locals 1

    .line 51
    sget-object v0, Landroid/window/DesktopModeFlags;->EXCLUDE_CAPTION_FROM_APP_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSandboxingPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/server/wm/AppCompatUtils;->isInDesktopMode(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 56
    iget-object p2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSandboxingPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 62
    :cond_2
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    return-void
.end method
