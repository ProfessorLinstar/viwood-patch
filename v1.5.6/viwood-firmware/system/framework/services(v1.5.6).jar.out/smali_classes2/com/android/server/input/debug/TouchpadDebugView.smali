.class public Lcom/android/server/input/debug/TouchpadDebugView;
.super Landroid/widget/LinearLayout;
.source "TouchpadDebugView.java"


# static fields
.field public static final BUTTON_PRESSED_BACKGROUND_COLOR:I

.field public static final BUTTON_RELEASED_BACKGROUND_COLOR:I


# instance fields
.field public mGestureInfoView:Landroid/widget/TextView;

.field public mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

.field public mLatestGestureType:I

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTouchDownX:F

.field public mTouchDownY:F

.field public final mTouchSlop:I

.field public final mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

.field public final mTouchpadId:I

.field public mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

.field public mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

.field public final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mWindowLocationBeforeDragX:I

.field public mWindowLocationBeforeDragY:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$hVfjbUWxFvWaxm-hd4RfCwE-EcM(Lcom/android/server/input/debug/TouchpadDebugView;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->lambda$onAttachedToWindow$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x97

    const/16 v1, 0x63

    const/16 v2, 0x76

    .line 55
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_PRESSED_BACKGROUND_COLOR:I

    const/16 v0, 0x55

    const/16 v1, 0xa9

    const/16 v2, 0x54

    .line 56
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/input/TouchpadHardwareProperties;Ljava/util/function/Consumer;)V
    .locals 7

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    .line 81
    new-instance v1, Lcom/android/server/input/TouchpadHardwareState;

    const/4 v5, 0x0

    new-array v6, v0, [Lcom/android/server/input/TouchpadFingerState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/TouchpadHardwareState;-><init>(FIII[Lcom/android/server/input/TouchpadFingerState;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    .line 91
    iput p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    iput-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 95
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/input/debug/TouchpadDebugView;->init(Landroid/content/Context;ILjava/util/function/Consumer;)V

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    .line 98
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7f6

    .line 99
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x108

    .line 100
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 p2, 0x3

    .line 105
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p2, -0x3

    .line 107
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TouchpadDebugView - display "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p0, 0x28

    .line 110
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 p0, 0x64

    .line 111
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p0, -0x2

    .line 112
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x33

    .line 114
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public static getGestureText(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 394
    const-string p0, "Unknown Gesture"

    goto :goto_0

    .line 393
    :pswitch_0
    const-string p0, "Mouse Wheel"

    goto :goto_0

    .line 392
    :pswitch_1
    const-string p0, "Four Finger Swipe Lift, 4 Fingers"

    goto :goto_0

    .line 391
    :pswitch_2
    const-string p0, "Four Finger Swipe, 4 Fingers"

    goto :goto_0

    .line 390
    :pswitch_3
    const-string p0, "Metrics"

    goto :goto_0

    .line 389
    :pswitch_4
    const-string p0, "Swipe Lift, 3 Fingers"

    goto :goto_0

    .line 388
    :pswitch_5
    const-string p0, "Pinch, 2 Fingers"

    goto :goto_0

    .line 387
    :pswitch_6
    const-string p0, "Swipe, 3 Fingers"

    goto :goto_0

    .line 386
    :pswitch_7
    const-string p0, "Fling"

    goto :goto_0

    .line 385
    :pswitch_8
    const-string p0, "Buttons Change, 1 Fingers"

    goto :goto_0

    .line 384
    :pswitch_9
    const-string p0, "Scroll, 2 Fingers"

    goto :goto_0

    .line 383
    :pswitch_a
    const-string p0, "Move, 1 Finger"

    .line 396
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latest Gesture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getGestureInfoView()Landroid/widget/TextView;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTouchpadId()I
    .locals 0

    .line 324
    iget p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    return p0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public final init(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateScreenDimensions()V

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 126
    new-instance v1, Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/input/debug/TouchpadSelectionView;-><init>(Landroid/content/Context;ILjava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    .line 128
    sget p2, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 129
    iget-object p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v1, 0x41400000    # 12.0f

    .line 130
    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 132
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v0, Lcom/android/server/input/debug/TouchpadVisualizationView;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-direct {v0, p1, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;-><init>(Landroid/content/Context;Lcom/android/server/input/TouchpadHardwareProperties;)V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    .line 139
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/high16 p1, 0x41800000    # 16.0f

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const-string v0, "Latest Gesture: "

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugView;->updateTheme(I)V

    .line 150
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateViewsDimensions()V

    return-void
.end method

.method public final isSlopExceeded(FF)Z
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    .line 278
    iget p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    mul-int/2addr p0, p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onAttachedToWindow$0()V
    .locals 4

    .line 161
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 162
    const-string v1, "TouchpadDebugView"

    if-nez v0, :cond_0

    .line 163
    const-string p0, "ViewRootImpl is null."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v2, 0x1

    const/high16 v3, 0x41c00000    # 24.0f

    .line 171
    invoke-static {v2, v3, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 170
    invoke-virtual {v1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 169
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    .line 176
    :cond_1
    const-string p0, "SurfaceControl is invalid or has been released."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 160
    new-instance v0, Lcom/android/server/input/debug/TouchpadDebugView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/TouchpadDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadDebugView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 242
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugView;->updateTheme(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateScreenDimensions()V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateViewsDimensions()V

    .line 249
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 251
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    .line 252
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 253
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    .line 229
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 224
    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 225
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    .line 199
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v0, v2

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr v2, v4

    .line 201
    invoke-virtual {p0, v0, v2}, Lcom/android/server/input/debug/TouchpadDebugView;->isSlopExceeded(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    .line 203
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 205
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 206
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 209
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return v3

    .line 214
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v0, v1

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr p1, v1

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/debug/TouchpadDebugView;->isSlopExceeded(FF)Z

    move-result p1

    if-nez p1, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->performClick()Z

    :cond_5
    return v3

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    .line 193
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    return v3

    :cond_7
    :goto_0
    return v1
.end method

.method public final onTouchpadButtonPress()V
    .locals 2

    .line 359
    const-string v0, "TouchpadDebugView"

    const-string v1, "You clicked me!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_PRESSED_BACKGROUND_COLOR:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public final onTouchpadButtonRelease()V
    .locals 2

    .line 364
    const-string v0, "TouchpadDebugView"

    const-string v1, "You released the click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 235
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 236
    const-string p0, "TouchpadDebugView"

    const-string v0, "You tapped the window!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final setLightModeTheme()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->setLightModeTheme()V

    .line 267
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 268
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setNightModeTheme()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->setNightModeTheme()V

    .line 273
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 274
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateGestureInfo(II)V
    .locals 1

    .line 372
    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    if-eq p2, p1, :cond_0

    .line 373
    iget-object p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/server/input/debug/TouchpadDebugView;->getGestureText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iput p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    :cond_0
    return-void
.end method

.method public updateHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 1

    .line 341
    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    if-eq p2, v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p2, p1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->onTouchpadHardwareStateNotified(Lcom/android/server/input/TouchpadHardwareState;)V

    .line 346
    iget-object p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {p2}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result p2

    if-nez p2, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result p2

    if-lez p2, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->onTouchpadButtonPress()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result p2

    if-nez p2, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->onTouchpadButtonRelease()V

    .line 355
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    return-void
.end method

.method public final updateScreenDimensions()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    .line 318
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    .line 320
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    return-void
.end method

.method public final updateTheme(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->setNightModeTheme()V

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->setLightModeTheme()V

    return-void
.end method

.method public final updateViewsDimensions()V
    .locals 7

    .line 282
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x423c0000    # 47.0f

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v0

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    const/high16 v1, 0x42340000    # 45.0f

    goto :goto_1

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v1

    .line 287
    :goto_1
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 288
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getBottom()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v3}, Lcom/android/server/input/TouchpadHardwareProperties;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    .line 287
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    .line 290
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 291
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getLeft()F

    move-result v1

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v3}, Lcom/android/server/input/TouchpadHardwareProperties;->getRight()F

    move-result v3

    sub-float/2addr v1, v3

    .line 290
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    .line 294
    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    int-to-float v0, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    .line 295
    iget v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 298
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v5, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    .line 297
    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    mul-float v5, v1, v3

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2

    div-float/2addr v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    mul-float v5, v2, v3

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    div-float v3, v4, v2

    .line 306
    :cond_3
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 308
    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v1, v0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->updateScaleFactor(F)V

    .line 313
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
