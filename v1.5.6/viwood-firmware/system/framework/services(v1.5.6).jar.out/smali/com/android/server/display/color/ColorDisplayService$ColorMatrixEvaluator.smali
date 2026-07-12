.class public Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final mResultMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 1432
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1427
    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->evaluate(F[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public evaluate(F[F[F)[F
    .locals 4

    const/4 v0, 0x0

    .line 1436
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1437
    aget v2, p2, v0

    aget v3, p3, v0

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
