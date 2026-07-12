.class Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
.super Ljava/util/PriorityQueue;
.source "AlarmQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/PriorityQueue<",
        "Landroid/util/Pair<",
        "TQ;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final sTimeComparator:Ljava/util/Comparator;


# direct methods
.method public static synthetic $r8$lambda$a9G3NCnbGSjGaU6KBkUKenfyhOo(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    .line 68
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->sTimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 71
    sget-object v1, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->sTimeComparator:Ljava/util/Comparator;

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public removeKey(Ljava/lang/Object;)Z
    .locals 5

    .line 81
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    .line 82
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 83
    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move v3, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v3
.end method
