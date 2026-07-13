.class public final Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;
.super Ljava/lang/Object;
.source "AdditionalSubtypeMapRepository.java"


# instance fields
.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mLockNotifier:Ljava/util/concurrent/locks/Condition;

.field public final mPendingTasks:Landroid/util/SparseArray;

.field public final mRemovedUsers:Landroid/util/IntArray;

.field public final mWriterThread:Ljava/lang/Thread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockNotifier(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLockNotifier:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTasks(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemovedUsers(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Landroid/util/IntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLockNotifier:Ljava/util/concurrent/locks/Condition;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 70
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;

    const-string v1, "android.ime.as"

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;-><init>(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mWriterThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public onUserCreated(I)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    throw p1
.end method

.method public onUserRemoved(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 179
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 182
    throw p1
.end method

.method public scheduleWriteTask(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;-><init>(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 137
    iget-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    iget-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 145
    :goto_0
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLockNotifier:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 145
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    throw p1
.end method

.method public startThread()V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mWriterThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
