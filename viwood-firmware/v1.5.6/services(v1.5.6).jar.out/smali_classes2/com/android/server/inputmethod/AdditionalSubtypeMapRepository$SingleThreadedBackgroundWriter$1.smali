.class public Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;
.super Ljava/lang/Thread;
.source "AdditionalSubtypeMapRepository.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;


# direct methods
.method public static synthetic $r8$lambda$RCqI2JbWn22bsn-qIiScow8MfdA(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)V
    .locals 2

    .line 120
    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->-$$Nest$fgetsubtypeMap(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->-$$Nest$fgetinputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->-$$Nest$fgetuserId(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Lcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final fetchNextTasks()Ljava/util/ArrayList;
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmLock(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmPendingTasks(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmPendingTasks(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmPendingTasks(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 89
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmRemovedUsers(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmRemovedUsers(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmLock(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p0, :cond_2

    .line 104
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 108
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 96
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmLockNotifier(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :goto_4
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->-$$Nest$fgetmLock(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    throw v0
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 116
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->fetchNextTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0
.end method
