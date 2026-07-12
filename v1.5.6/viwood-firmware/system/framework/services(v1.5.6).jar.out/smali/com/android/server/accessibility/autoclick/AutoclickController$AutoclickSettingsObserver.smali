.class public final Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoclickController.java"


# instance fields
.field public final mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

.field public final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field public final mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

.field public mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

.field public final mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

.field public mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    .line 420
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 398
    const-string p2, "accessibility_autoclick_delay"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 402
    const-string p2, "accessibility_autoclick_cursor_area_size"

    .line 403
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

    .line 406
    const-string p2, "accessibility_autoclick_ignore_minor_cursor_movement"

    .line 407
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

    .line 410
    const-string p2, "accessibility_autoclick_revert_to_left_click"

    .line 411
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

    .line 421
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 504
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/16 p2, 0x258

    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    .line 506
    const-string v1, "accessibility_autoclick_delay"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 511
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->updateDelay(I)V

    :cond_0
    return-void
.end method

.method public start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 449
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 450
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 451
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 452
    iget-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    const/4 p3, 0x0

    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    invoke-virtual {p1, p2, p3, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 459
    iget-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 446
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "clickScheduler not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentResolver not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 440
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 496
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AutoclickSettingsObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
