.class public abstract Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final Companion:Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression$Companion;


# instance fields
.field public final first:I

.field public final last:I

.field public final step:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->Companion:Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression$Companion;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 98
    invoke-static {p1, p2, p3}, Lcom/android/server/permission/jarjar/kotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 103
    iput p3, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->step:I

    return-void

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getFirst()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    return p0
.end method

.method public final getLast()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    return p0
.end method

.method public iterator()Lcom/android/server/permission/jarjar/kotlin/collections/IntIterator;
    .locals 3

    .line 105
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgressionIterator;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->step:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgressionIterator;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->iterator()Lcom/android/server/permission/jarjar/kotlin/collections/IntIterator;

    move-result-object p0

    return-object p0
.end method
