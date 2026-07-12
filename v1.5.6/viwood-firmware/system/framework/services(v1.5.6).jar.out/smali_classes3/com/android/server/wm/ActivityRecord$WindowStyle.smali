.class public Lcom/android/server/wm/ActivityRecord$WindowStyle;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# instance fields
.field public final mFlags:I

.field public final mSplashScreenBehavior:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 9611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 9613
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x4

    .line 9616
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v2, 0xe

    .line 9619
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/16 v2, 0xa

    .line 9622
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    const/16 v2, 0xc

    .line 9625
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    const/16 v2, 0x3f

    .line 9628
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x20

    .line 9631
    :cond_4
    iput v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    const/16 v0, 0x3d

    .line 9632
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mSplashScreenBehavior:I

    return-void
.end method


# virtual methods
.method public disablePreview()Z
    .locals 0

    .line 9652
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFloating()Z
    .locals 0

    .line 9640
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 9636
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public noDisplay()Z
    .locals 0

    .line 9648
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public optOutEdgeToEdge()Z
    .locals 0

    .line 9656
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showWallpaper()Z
    .locals 0

    .line 9644
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
