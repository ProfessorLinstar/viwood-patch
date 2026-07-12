.class public Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final notifyForDescendants:Z

.field public final observer:Landroid/database/IContentObserver;

.field public final observersLock:Ljava/lang/Object;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/content/ContentService$ObserverNode;

.field public final uid:I

.field public final userHandle:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetuserHandle(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V
    .locals 0

    .line 1676
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1677
    iput-object p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    .line 1678
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 1679
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1680
    iput p6, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 1681
    iput p7, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    .line 1682
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    .line 1684
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/os/BinderDeathDispatcher;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 1686
    invoke-virtual {p0}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    return-void

    :cond_0
    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_2

    .line 1690
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;

    move-result-object p1

    monitor-enter p1

    .line 1691
    :try_start_0
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1693
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1695
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 1699
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    .line 1700
    invoke-interface {p1, p5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 1699
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 1703
    :goto_1
    const-string p2, "ContentService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Observer registered too many times. Leak? cpid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " cuid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cpkg="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " url="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1695
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1714
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v1, p0}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 1716
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 1721
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p6, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": pid="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1723
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " uid="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " user="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " target="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1727
    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1726
    :goto_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
