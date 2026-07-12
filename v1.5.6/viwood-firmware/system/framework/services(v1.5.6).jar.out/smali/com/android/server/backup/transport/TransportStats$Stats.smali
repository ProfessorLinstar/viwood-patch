.class public final Lcom/android/server/backup/transport/TransportStats$Stats;
.super Ljava/lang/Object;
.source "TransportStats.java"


# instance fields
.field public average:D

.field public max:J

.field public min:J

.field public n:I


# direct methods
.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/backup/transport/TransportStats$Stats;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/transport/TransportStats$Stats;->register(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    const-wide v0, 0x7fffffffffffffffL

    .line 101
    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    return-void
.end method

.method public constructor <init>(IDJJ)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 106
    iput-wide p2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 107
    iput-wide p4, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 108
    iput-wide p6, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    return-void
.end method

.method public static merge(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$Stats;)Lcom/android/server/backup/transport/TransportStats$Stats;
    .locals 10

    .line 85
    new-instance v0, Lcom/android/server/backup/transport/TransportStats$Stats;

    iget v1, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget v2, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    move v3, v1

    add-int v1, v3, v2

    iget-wide v4, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    int-to-double v6, v3

    mul-double/2addr v4, v6

    iget-wide v6, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    int-to-double v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/2addr v2, v3

    int-to-double v2, v2

    div-double v2, v4, v2

    iget-wide v4, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iget-wide v6, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 88
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    iget-wide p0, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 89
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(IDJJ)V

    return-object v0
.end method


# virtual methods
.method public final register(J)V
    .locals 5

    .line 116
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    int-to-double v3, v2

    mul-double/2addr v0, v3

    long-to-double v3, p1

    add-double/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    int-to-double v3, v3

    div-double/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    add-int/lit8 v2, v2, 0x1

    .line 117
    iput v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 118
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 119
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    return-void
.end method
