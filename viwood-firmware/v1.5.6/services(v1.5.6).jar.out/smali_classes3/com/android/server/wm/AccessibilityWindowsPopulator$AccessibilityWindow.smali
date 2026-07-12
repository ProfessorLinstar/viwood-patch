.class public Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
.super Ljava/lang/Object;
.source "AccessibilityWindowsPopulator.java"


# instance fields
.field public mDisplayId:I

.field public mInputConfig:I

.field public mIsFocused:Z

.field public mIsPIPMenu:Z

.field public mPrivateFlags:I

.field public mShouldMagnify:Z

.field public mSystemBarInsetFrame:Landroid/graphics/Rect;

.field public final mTouchableRegionInScreen:Landroid/graphics/Region;

.field public final mTouchableRegionInWindow:Landroid/graphics/Region;

.field public mType:I

.field public mWindow:Landroid/os/IBinder;

.field public mWindowInfo:Landroid/view/WindowInfo;


# direct methods
.method public static synthetic $r8$lambda$mgve4lmpe0TAPbOqbfYHFvU6UUM(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 2

    .line 862
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 864
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 865
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 867
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget p3, v0, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 659
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public static getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1

    .line 834
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 835
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 836
    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 838
    invoke-static {p0, v0, p2, p4, p5}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 855
    invoke-virtual {p3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 856
    invoke-virtual {p2, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void

    .line 860
    :cond_1
    new-instance p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    invoke-direct {p0, p4, p3, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {p1, p0}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;
    .locals 2

    .line 873
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 874
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 875
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 876
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 877
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 880
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    iput-boolean p0, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    return-object v0
.end method

.method public static initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .locals 10

    .line 673
    invoke-virtual {p1}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 676
    :goto_0
    new-instance v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    invoke-direct {v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;-><init>()V

    .line 678
    iput-object v0, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    .line 679
    iget v2, p1, Landroid/view/InputWindowHandle;->displayId:I

    iput v2, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    .line 680
    iget v2, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v2, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 681
    iget v2, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v2, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 682
    invoke-interface {v0, p3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, v3

    :goto_1
    iput-boolean p3, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    if-eqz p0, :cond_2

    .line 685
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_2

    :cond_2
    move p3, v3

    :goto_2
    iput p3, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    if-eqz p0, :cond_3

    .line 687
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, v2

    goto :goto_3

    :cond_3
    move p3, v3

    :goto_3
    iput-boolean p3, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    if-eqz p0, :cond_5

    .line 688
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :cond_5
    :goto_4
    iput-boolean v2, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 690
    new-instance v7, Landroid/graphics/Rect;

    iget-object p3, p1, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-direct {v7, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 691
    iget-boolean v4, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v5, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v6, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    move-object v8, p2

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 694
    iget-boolean p2, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object p3, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object p4, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-static {p2, p3, p4, v8, v9}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    if-eqz p0, :cond_6

    .line 698
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object p2

    goto :goto_5

    :cond_6
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;

    move-result-object p2

    :goto_5
    iput-object p2, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 702
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 703
    iget-object p1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 704
    invoke-virtual {p2, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 705
    iget-object p1, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object p1, p1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 708
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 709
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->shouldMagnify()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz v8, :cond_8

    .line 710
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p2

    if-nez p2, :cond_8

    .line 711
    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 712
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 713
    iget-object p1, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object p1, p1, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 714
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    aget p2, p2, v3

    iput p2, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 715
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    const/4 p3, 0x2

    aget p2, p2, p3

    iput p2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 716
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p2

    const/4 p3, 0x5

    aget p2, p2, p3

    iput p2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_6

    .line 718
    :cond_7
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "can\'t find spec"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    if-eqz p0, :cond_9

    .line 723
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isUntouchableNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 725
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 727
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    :cond_9
    return-object v1
.end method


# virtual methods
.method public getSystemBarInsetsFrame()Landroid/graphics/Rect;
    .locals 0

    .line 823
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTouchableRegionInScreen(Landroid/graphics/Region;)V
    .locals 0

    .line 738
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getTouchableRegionInWindow(Landroid/graphics/Region;)V
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getType()I
    .locals 0

    .line 753
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    return p0
.end method

.method public getWindowInfo()Landroid/view/WindowInfo;
    .locals 0

    .line 768
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    return-object p0
.end method

.method public isFocused()Z
    .locals 0

    .line 782
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    return p0
.end method

.method public isPIPMenu()Z
    .locals 0

    .line 814
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    return p0
.end method

.method public isTouchable()Z
    .locals 0

    .line 796
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTrustedOverlay()Z
    .locals 0

    .line 789
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUntouchableNavigationBar()Z
    .locals 2

    .line 803
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 807
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public shouldMagnify()Z
    .locals 0

    .line 775
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "(no window token)"

    .line 888
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A11yWindow=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", displayId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inputConfig=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 890
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", privateFlag=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    .line 892
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", focused="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldMagnify="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isTrustedOverlay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", regionInScreen="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", touchableRegion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPIPMenu="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", windowInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
