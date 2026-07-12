.class public Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/Dialog;
.source "UserSwitchingDialog.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisableAnimations:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mNewUser:Landroid/content/pm/UserInfo;

.field public final mOldUser:Landroid/content/pm/UserInfo;

.field public final mSwitchingFromUserMessage:Ljava/lang/String;

.field public final mSwitchingToUserMessage:Ljava/lang/String;

.field public final mTraceCookie:I


# direct methods
.method public static synthetic $r8$lambda$5NqD0_Luw6ZsTDBo6jEY0-IO8uM(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " animation not completed in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserSwitchingDialog"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$GwAb5XTAMKnNSVU65IcCzTsB9Gk(Ljava/lang/Runnable;)V
    .locals 0

    .line 200
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$Urx1na3xSUj5v9yusgmvPu5vAGE(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startDismissAnimation$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n6zjrmfI_HhnfLq6s4lpiNHuDDU(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startShowAnimation$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uyKSDbOYwNPshkGOB_1BSiTEufY(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserSwitchingDialog;->lambda$animationWithTimeout$5(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xsDK0cmiZottOh-oAYlXeDXggdw(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$dismiss$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yPbG8DIBNhoIbmE7hkNB-ds1z3Y(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startShowAnimation$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x103022f

    .line 90
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 92
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 94
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 95
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p5, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromUserMessage:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    .line 98
    const-string p1, "debug.usercontroller.disable_user_switching_dialog_animations"

    const/4 p4, 0x0

    invoke-static {p1, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 100
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    mul-int/lit16 p1, p1, 0x53e1

    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->configureWindow()V

    return-void
.end method


# virtual methods
.method public final animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 4

    .line 304
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 305
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 311
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1, v1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/16 p1, 0xa0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p2, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-object v1
.end method

.method public final asyncTraceBegin(Ljava/lang/String;I)V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncTraceBegin-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserSwitchingDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public final asyncTraceEnd(Ljava/lang/String;I)V
    .locals 4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSwitchingDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p2

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "asyncTraceEnd-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final configureWindow()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x110

    .line 109
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x3

    .line 111
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x106000d

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x7da

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method public final defaultUserIcon(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 162
    invoke-static {p0, p1}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .line 192
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    const-string v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 2

    .line 205
    const-string v0, "UserSwitchingDialog"

    const-string v1, "dismiss called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startDismissAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getSpinnerAVD()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    const v0, 0x102049d

    .line 266
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 269
    instance-of v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 270
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextMessage()Ljava/lang/String;
    .locals 3

    .line 166
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x1040357

    goto :goto_0

    :cond_0
    const p0, 0x1040358

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromUserMessage:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x1040a92

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 175
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromUserMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToUserMessage:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getUserIconRounded()Landroid/graphics/Bitmap;
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserSwitchingDialog;->defaultUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 148
    invoke-static {v0, p0}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 153
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 154
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    invoke-virtual {p0, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public inflateContent()V
    .locals 4

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x1090182

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x102000b

    .line 123
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getTextMessage()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x1020006

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getUserIconRounded()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    const v0, 0x102049d

    .line 135
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 137
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v1, :cond_2

    const/16 p0, 0x8

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 140
    :cond_2
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 141
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v2, 0x1120025

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 142
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    return-void
.end method

.method public final synthetic lambda$animationWithTimeout$5(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$dismiss$1(Ljava/lang/Runnable;)V
    .locals 0

    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 212
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic lambda$startDismissAnimation$4(Ljava/lang/Runnable;)V
    .locals 2

    .line 243
    const-string v0, "dismissAnimation"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 245
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic lambda$startShowAnimation$2(Ljava/lang/Runnable;)V
    .locals 2

    .line 228
    const-string/jumbo v0, "spinnerAnimation"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 230
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic lambda$startShowAnimation$3(Ljava/lang/Runnable;)V
    .locals 2

    .line 224
    const-string/jumbo v0, "showAnimation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 226
    const-string/jumbo v0, "spinnerAnimation"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 227
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startProgressAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 186
    const-string v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 187
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show(Ljava/lang/Runnable;)V
    .locals 2

    .line 197
    const-string v0, "UserSwitchingDialog"

    const-string/jumbo v1, "show called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->show()V

    .line 199
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startShowAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .locals 3

    const v0, 0x1020002

    .line 277
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/UserSwitchingDialog;->animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x12c

    .line 283
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    new-instance p3, Lcom/android/server/am/UserSwitchingDialog$2;

    invoke-direct {p3, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 279
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final startDismissAnimation(Ljava/lang/Runnable;)V
    .locals 3

    .line 236
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 241
    :cond_0
    const-string v0, "dismissAnimation"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 242
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    const-string p1, "dismiss"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startProgressAnimation(Ljava/lang/Runnable;)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getSpinnerAVD()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    .line 251
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    const-string/jumbo v1, "spinner"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 256
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 262
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 252
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final startShowAnimation(Ljava/lang/Runnable;)V
    .locals 3

    .line 218
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 222
    :cond_0
    const-string/jumbo v0, "showAnimation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 223
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    const-string/jumbo p1, "show"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void
.end method
