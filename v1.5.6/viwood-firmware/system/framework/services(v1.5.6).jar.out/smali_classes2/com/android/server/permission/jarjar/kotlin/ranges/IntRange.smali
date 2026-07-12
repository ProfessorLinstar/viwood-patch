.class public final Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;
.super Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;
.source "PrimitiveRanges.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange$Companion;

.field public static final EMPTY:Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;->Companion:Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange$Companion;

    .line 85
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;-><init>(II)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;->EMPTY:Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;-><init>(III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 75
    instance-of v0, p1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    check-cast p1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    invoke-virtual {p1}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getLast()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getLast()I

    move-result p1

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getLast()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getLast()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->getLast()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
