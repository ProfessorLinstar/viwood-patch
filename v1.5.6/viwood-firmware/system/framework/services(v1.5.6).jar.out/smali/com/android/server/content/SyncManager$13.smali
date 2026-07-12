.class public Lcom/android/server/content/SyncManager$13;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 2690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I
    .locals 2

    .line 2694
    iget p0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    iget v0, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-nez p0, :cond_0

    .line 2696
    iget-wide v0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    iget-wide p0, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2690
    check-cast p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    check-cast p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$13;->compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I

    move-result p0

    return p0
.end method
