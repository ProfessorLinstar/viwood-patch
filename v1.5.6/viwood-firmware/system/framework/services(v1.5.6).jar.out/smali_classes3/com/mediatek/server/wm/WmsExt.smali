.class public Lcom/mediatek/server/wm/WmsExt;
.super Ljava/lang/Object;
.source "WmsExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getWindowScaleForAI(Ljava/lang/String;)F
    .locals 0

    .line 0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public isAppResolutionTunerAISupport()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isAppResolutionTunerSupport()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public loadResolutionTunerAppList()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeMwcWindow(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    return-void
.end method

.method public reportFocusChangedMwcFeature(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setWindowScaleByWL(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateWindowForMwcFeature(Lcom/android/server/wm/WindowState;I)V
    .locals 0

    .line 0
    return-void
.end method
