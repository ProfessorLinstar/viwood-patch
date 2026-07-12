.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$2;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logMagnificationTripleTap(Z)V
    .locals 0

    .line 294
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    return-void
.end method

.method public logMagnificationTwoFingerTripleTap(Z)V
    .locals 0

    .line 299
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTwoFingerTripleTap(Z)V

    return-void
.end method
