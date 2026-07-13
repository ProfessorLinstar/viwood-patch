.class public Lcom/android/server/content/SyncManager$14;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 2734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/content/SyncManager$AccountSyncStats;Lcom/android/server/content/SyncManager$AccountSyncStats;)I
    .locals 2

    .line 2738
    iget p0, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    iget v0, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-nez p0, :cond_0

    .line 2740
    iget-wide v0, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    iget-wide p0, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2734
    check-cast p1, Lcom/android/server/content/SyncManager$AccountSyncStats;

    check-cast p2, Lcom/android/server/content/SyncManager$AccountSyncStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$14;->compare(Lcom/android/server/content/SyncManager$AccountSyncStats;Lcom/android/server/content/SyncManager$AccountSyncStats;)I

    move-result p0

    return p0
.end method
