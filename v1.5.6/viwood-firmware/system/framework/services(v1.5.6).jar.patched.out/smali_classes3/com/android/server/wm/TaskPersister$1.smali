.class public Lcom/android/server/wm/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPersister;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 2

    .line 417
    iget-wide v0, p2, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    iget-wide p0, p1, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 414
    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister$1;->compare(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method
