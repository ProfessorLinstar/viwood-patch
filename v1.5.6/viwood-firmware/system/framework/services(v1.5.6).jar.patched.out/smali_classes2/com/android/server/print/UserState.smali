.class public final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;


# instance fields
.field public final mActiveServices:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDisabledServices:Ljava/util/Set;

.field public final mInstalledServices:Ljava/util/List;

.field public mIsInstantServiceAllowed:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field public mPrintJobStateChangeListenerRecords:Ljava/util/List;

.field public mPrintServiceRecommendations:Ljava/util/List;

.field public mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

.field public mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field public mPrintServicesChangeListenerRecords:Ljava/util/List;

.field public mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field public final mQueryIntent:Landroid/content/Intent;

.field public final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$MP5uV7gqJs9XgyfNvgB66sfsHXk(Lcom/android/server/print/UserState;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bANLD0jfi8VwLPSTVtTkuQV_1jA(Lcom/android/server/print/UserState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->handleDispatchPrintServicesChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$fUjl-3TPhEZ-0EeBv1E8EM9SRc8(Lcom/android/server/print/UserState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$nEZwEnf7T5SIUrAUYJ4NuRlLMak(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tlPZXpotZTo9hmEb5tVjkWARK8w(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/print/UserState;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/print/UserState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintJobStateChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintServiceRecommendationsChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintServicesChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPrinterDiscoverySession(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveServiceLocked(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 129
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState-IA;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 166
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 167
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 168
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {v0, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 171
    monitor-enter p3

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 175
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 180
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 175
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 574
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 578
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 661
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 664
    new-instance v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 666
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 668
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 618
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 621
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz p0, :cond_0

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    :cond_0
    return-void
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 352
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 353
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 356
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintService;

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void

    :catchall_0
    move-exception p0

    .line 360
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void

    .line 369
    :cond_3
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 p2, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    return-void
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->clearCustomPrinterIconCache()V

    .line 463
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 466
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_0

    .line 468
    new-instance v1, Lcom/android/server/print/UserState$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 475
    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 478
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 480
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroyLocked()V
    .locals 2

    .line 812
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 813
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 814
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 815
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 818
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 819
    iget-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 820
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    const/4 v0, 0x0

    .line 822
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    :cond_1
    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_0

    .line 487
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 491
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 12

    .line 828
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    const-string/jumbo v1, "user_id"

    iget v2, p0, Lcom/android/server/print/UserState;->mUserId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 831
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 833
    const-string v4, "installed_services"

    const-wide v5, 0x20b00000002L

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 835
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/printservice/PrintServiceInfo;

    .line 837
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 838
    const-string v8, "component_name"

    new-instance v9, Landroid/content/ComponentName;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v10, 0x10b00000001L

    invoke-static {p1, v8, v10, v11, v9}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 843
    const-string/jumbo v7, "settings_activity"

    .line 845
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000002L

    .line 843
    invoke-static {p1, v7, v9, v10, v8}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 846
    const-string v7, "add_printers_activity"

    .line 848
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000003L

    .line 846
    invoke-static {p1, v7, v9, v10, v8}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 849
    const-string v7, "advanced_options_activity"

    .line 851
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v6

    const-wide v8, 0x10900000004L

    .line 849
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 853
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 857
    const-string v4, "disabled_services"

    const-wide v5, 0x20b00000003L

    invoke-static {p1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    goto :goto_1

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_2

    .line 863
    const-string v3, "actives_services"

    const-wide v4, 0x20b00000004L

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 865
    iget-object v5, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v5, p1}, Lcom/android/server/print/RemotePrintService;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 866
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 869
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 871
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v1, :cond_3

    .line 872
    const-string v1, "discovery_service"

    const-wide v2, 0x20b00000006L

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 874
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 875
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 878
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    const-string/jumbo v0, "print_spooler_state"

    const-wide v1, 0x10b00000007L

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 882
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 883
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    .line 878
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .locals 2

    .line 1106
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .locals 8

    .line 1115
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, -0x4

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1120
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1122
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 1125
    iget-object v5, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v7, 0x10408ff

    .line 1126
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    .line 1125
    invoke-virtual {v5, v4, v7, v6}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1129
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    throw p0
.end method

.method public getBindInstantServiceAllowed()Z
    .locals 0

    .line 1213
    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    return p0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintService;

    if-eqz p0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    :cond_0
    return-object v0
.end method

.method public final getInstalledComponents()Ljava/util/ArrayList;
    .locals 6

    .line 1012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1016
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1017
    new-instance v4, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 315
    invoke-virtual {v0, p0}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p0}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    :cond_1
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v0

    .line 275
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_0

    .line 281
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrintJobInfo;

    .line 282
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v0, -0x1

    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 293
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_1

    .line 295
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 296
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v0, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    return-object p0
.end method

.method public getPrintServices(I)Ljava/util/List;
    .locals 8

    .line 382
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 386
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 388
    new-instance v5, Landroid/content/ComponentName;

    .line 389
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 390
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    .line 395
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_1

    goto :goto_2

    :cond_0
    and-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 406
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 408
    :cond_2
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_3
    monitor-exit v0

    return-object v2

    .line 411
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .locals 5

    .line 1141
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p2

    .line 1143
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1147
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    .line 1151
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 1152
    iget v3, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    if-ne v3, p2, :cond_2

    .line 1155
    :cond_1
    :try_start_1
    iget-object v2, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v2, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1157
    const-string v3, "UserState"

    const-string v4, "Error notifying for print job state change"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 1148
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .locals 4

    .line 1186
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1190
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1192
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 1193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    .line 1196
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1199
    :try_start_1
    iget-object v0, v0, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v0, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v0}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1201
    const-string v2, "UserState"

    const-string v3, "Error notifying for print service recommendations change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1193
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleDispatchPrintServicesChanged()V
    .locals 5

    .line 1165
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1169
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 1173
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1176
    :try_start_1
    iget-object v2, v2, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v2, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v2}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1178
    const-string v3, "UserState"

    const-string v4, "Error notifying for print services change"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1170
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public increasePriority()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->increasePriority()V

    return-void
.end method

.method public isPrintServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 447
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 449
    monitor-exit v0

    return p0

    .line 450
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 210
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintService;

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 211
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onConfigurationChanged()V
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1208
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 1209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onConfigurationChangedLocked()V
    .locals 10

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1052
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/ComponentName;

    .line 1054
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1055
    iget-object v3, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1056
    new-instance v4, Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 1058
    invoke-virtual {v9, v4}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_1

    :cond_0
    move-object v9, p0

    goto :goto_1

    :cond_1
    move-object v9, p0

    .line 1061
    iget-object p0, v9, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintService;

    if-eqz p0, :cond_2

    .line 1063
    invoke-virtual {v9, p0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v9

    goto :goto_0

    :cond_3
    move-object v9, p0

    .line 1068
    iget-object p0, v9, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 1069
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1070
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1071
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1072
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1073
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1074
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1075
    invoke-virtual {v9, v1}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1076
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1080
    :cond_5
    invoke-virtual {v9}, Lcom/android/server/print/UserState;->onPrintServicesChanged()V

    return-void
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    .line 767
    iget-object p2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 768
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 771
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_0

    .line 772
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V

    .line 775
    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 192
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v1, 0x10408ff

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    .line 200
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 194
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 713
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>()V

    .line 715
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    .line 716
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    .line 713
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .locals 2

    .line 726
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintServicesChanged()V
    .locals 2

    .line 720
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 736
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 740
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_1

    .line 741
    monitor-exit v0

    return-void

    .line 743
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V

    .line 744
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 752
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 756
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_1

    .line 757
    monitor-exit v0

    return-void

    .line 759
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V

    .line 760
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .locals 5

    .line 780
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 783
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 788
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 790
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/UserState$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 798
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_1

    .line 799
    monitor-exit v0

    return-void

    .line 801
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 802
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 10

    .line 225
    const-string v0, "android.print.intent.extra.EXTRA_PRINT_JOB"

    new-instance v1, Landroid/print/PrintJobInfo;

    invoke-direct {v1}, Landroid/print/PrintJobInfo;-><init>()V

    .line 226
    new-instance v2, Landroid/print/PrintJobId;

    invoke-direct {v2}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v1, v2}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 227
    invoke-virtual {v1, p5}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 228
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, p3}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    const/4 p1, 0x1

    .line 230
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 231
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 235
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p1, p3, p5, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 241
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 243
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string p1, "android.print.PRINT_DIALOG"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    const-string/jumbo p1, "printjob"

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object p5

    invoke-virtual {p5}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    const-string p1, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 246
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 p2, 0x2

    .line 250
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 252
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v9, p0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/high16 v7, 0x54000000

    .line 252
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    .line 257
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 258
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 259
    const-string p2, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    throw p0
.end method

.method public prunePrintServices()V
    .locals 3

    .line 1032
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v1

    .line 1036
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-virtual {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1040
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V

    return-void

    .line 1040
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final readConfigurationLocked()V
    .locals 0

    .line 887
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 888
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    return-void
.end method

.method public final readDisabledPrintServicesLocked()V
    .locals 2

    .line 962
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 963
    const-string v1, "disabled_print_services"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 967
    iget-object p0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final readInstalledPrintServicesLocked()V
    .locals 8

    .line 892
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 896
    iget-boolean v1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    if-eqz v1, :cond_0

    const v1, 0x10800084

    goto :goto_0

    :cond_0
    const v1, 0x10000084

    .line 900
    :goto_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 901
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 903
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 905
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 906
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_PRINT_SERVICE"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 908
    new-instance v5, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping print service "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " since it does not require permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 911
    const-string v5, "UserState"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 917
    :cond_1
    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 920
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 921
    iget-object p0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 975
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 976
    iget-object p0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 977
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 978
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 979
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 980
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 983
    :cond_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 985
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeObsoletePrintJobs()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .locals 6

    .line 593
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 595
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 596
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 598
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 600
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 601
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 602
    iget-object v4, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    invoke-virtual {v3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->destroy()V

    .line 604
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 609
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 611
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 6

    .line 684
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 686
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 687
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 689
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 691
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 692
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 693
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v4}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 695
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 700
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 702
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 704
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 705
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 707
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .locals 6

    .line 636
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 638
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 639
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 641
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 643
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 644
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 645
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 646
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 647
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 652
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 654
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 1

    .line 1092
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 1094
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz p0, :cond_0

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    return-void

    .line 1098
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    return-void
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .locals 1

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 375
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getState()I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setBindInstantServiceAllowed(Z)V
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 1221
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    .line 423
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    .line 425
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 434
    iget-object p1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 436
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    xor-int/2addr p2, v1

    const/16 v1, 0x1ff

    invoke-static {p1, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 439
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 441
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 500
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_0

    .line 501
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 506
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 542
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 546
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_1

    .line 547
    monitor-exit v0

    return-void

    .line 550
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 551
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 514
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_0

    .line 515
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 519
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 558
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 562
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_1

    .line 563
    monitor-exit v0

    return-void

    .line 566
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 567
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final throwIfDestroyedLocked()V
    .locals 1

    .line 1134
    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-nez p0, :cond_0

    return-void

    .line 1135
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot interact with a destroyed instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateIfNeededLocked()V
    .locals 0

    .line 806
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 807
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    return-void
.end method

.method public final upgradePersistentStateIfNeeded()V
    .locals 7

    .line 928
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    const-string v2, "enabled_print_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 934
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 935
    invoke-virtual {p0, v2, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 938
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 939
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 941
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 942
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 943
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 947
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 951
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 526
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 530
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_1

    .line 531
    monitor-exit v0

    return-void

    .line 534
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V

    .line 535
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .locals 3

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x3a

    .line 998
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1000
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1002
    :cond_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1003
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 1002
    const-string v1, "disabled_print_services"

    invoke-static {p1, v1, v0, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
