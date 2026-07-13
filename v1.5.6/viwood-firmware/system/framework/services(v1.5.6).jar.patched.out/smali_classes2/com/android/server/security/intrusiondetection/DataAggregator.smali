.class public Lcom/android/server/security/intrusiondetection/DataAggregator;
.super Ljava/lang/Object;
.source "DataAggregator.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mDataSources:Ljava/util/ArrayList;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public final mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

.field public final mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mStoredEvents:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$monDisable(Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->onDisable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNewBatchData(Lcom/android/server/security/intrusiondetection/DataAggregator;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->onNewBatchData(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNewSingleData(Lcom/android/server/security/intrusiondetection/DataAggregator;Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->onNewSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    .line 52
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addBatchData(Ljava/util/List;)V
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public disable()V
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public enable()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->initialize()V

    .line 74
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "IntrusionDetection DataAggregator"

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 78
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 79
    new-instance v0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    .line 80
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/security/intrusiondetection/DataSource;

    .line 81
    invoke-interface {v1}, Lcom/android/server/security/intrusiondetection/DataSource;->enable()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final initialize()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;-><init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-direct {v1, p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;-><init>(Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onDisable()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/security/intrusiondetection/DataSource;

    .line 121
    invoke-interface {v3}, Lcom/android/server/security/intrusiondetection/DataSource;->disable()V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    return-void
.end method

.method public final onNewBatchData(Ljava/util/List;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->addNewData(Ljava/util/List;)V

    return-void
.end method

.method public final onNewSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->addNewData(Ljava/util/List;)V

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    return-void
.end method

.method public setHandler(Landroid/os/Looper;Lcom/android/server/ServiceThread;)V
    .locals 0

    .line 58
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 59
    new-instance p2, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    invoke-direct {p2, p1, p0}, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    return-void
.end method
