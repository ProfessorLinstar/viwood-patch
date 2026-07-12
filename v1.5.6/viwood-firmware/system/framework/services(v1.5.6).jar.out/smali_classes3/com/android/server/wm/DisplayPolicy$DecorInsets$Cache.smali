.class public Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# static fields
.field public static final TYPE_REGULAR_BARS:I


# instance fields
.field public mActive:Z

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public mPreserveId:I

.field public mPreservedInsets:Ljava/util/ArrayList;

.field public mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field public mRegularBarsInsets:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2237
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    .line 2238
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->TYPE_REGULAR_BARS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 2256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2257
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    return-void
.end method


# virtual methods
.method public canPreserve()Z
    .locals 2

    .line 2261
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 2262
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
