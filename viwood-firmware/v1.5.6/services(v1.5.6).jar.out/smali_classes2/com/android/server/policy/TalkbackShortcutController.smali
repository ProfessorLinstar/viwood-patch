.class Lcom/android/server/policy/TalkbackShortcutController;
.super Ljava/lang/Object;
.source "TalkbackShortcutController.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isTalkBackShortcutGestureEnabled()Z
    .locals 3

    .line 83
    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "wear_accessibility_gesture_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public final logStemTriplePressAccessibilityTelemetry(Landroid/content/ComponentName;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wear_accessibility_gesture_enabled_during_oobe"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    const/4 v0, 0x7

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)Z
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    const-string v2, "TalkBack"

    .line 60
    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getInstalledAccessibilityServiceComponentNameByLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    sget-object v2, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    if-eq p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    xor-int/lit8 v2, v0, 0x1

    .line 71
    iget-object v3, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 75
    sget-object p1, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    if-ne p2, p1, :cond_3

    if-nez v0, :cond_3

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/policy/TalkbackShortcutController;->logStemTriplePressAccessibilityTelemetry(Landroid/content/ComponentName;)V

    :cond_3
    return v2
.end method
