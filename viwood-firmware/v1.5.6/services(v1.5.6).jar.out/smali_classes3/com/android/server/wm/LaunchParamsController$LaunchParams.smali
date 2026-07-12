.class public Lcom/android/server/wm/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# instance fields
.field public final mAppBounds:Landroid/graphics/Rect;

.field public final mBounds:Landroid/graphics/Rect;

.field public mNeedsSafeRegionBounds:Ljava/lang/Boolean;

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    check-cast p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 247
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v2, :cond_2

    return v0

    .line 248
    :cond_2
    iget v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v1, v2, :cond_3

    return v0

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    iget-object p0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    return v0
.end method

.method public hasPreferredTaskDisplayArea()Z
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasWindowingMode()Z
    .locals 0

    .line 233
    iget p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 258
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 261
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 262
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public merge(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 217
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 218
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 221
    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v1, 0x0

    .line 200
    iput v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 201
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    return-void
.end method

.method public set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 209
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 210
    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    return-void
.end method
