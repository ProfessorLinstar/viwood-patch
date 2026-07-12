.class public Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioPolicy.java"


# instance fields
.field public mIsAspectRatioApplied:Z

.field public mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

.field public mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLetterboxBoundsForAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLetterboxBoundsForFixedOrientationAndAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatAspectRatioPolicy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;-><init>()V

    return-void
.end method


# virtual methods
.method public getLetterboxedContainerBounds()Landroid/graphics/Rect;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 443
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isLetterboxedForAspectRatioOnly()Z
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLetterboxedForFixedOrientationAndAspectRatio()Z
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    .line 449
    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    return-void
.end method
