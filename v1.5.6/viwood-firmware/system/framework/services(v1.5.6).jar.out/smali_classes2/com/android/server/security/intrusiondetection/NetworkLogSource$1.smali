.class public Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkLogSource.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;


# direct methods
.method public constructor <init>(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmIsNetworkLoggingEnabled(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v1, Landroid/app/admin/ConnectEvent;

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmPm(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 141
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmId(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/app/admin/ConnectEvent;->setId(J)V

    .line 142
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$mincrementEventID(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V

    .line 143
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object p0

    .line 144
    invoke-static {v1}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForConnectEvent(Landroid/app/admin/ConnectEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->addSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmIsNetworkLoggingEnabled(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance p2, Landroid/app/admin/DnsEvent;

    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmPm(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p1

    .line 126
    invoke-virtual {p1, p9}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    move-object p6, p1

    invoke-direct/range {p2 .. p8}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 128
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmId(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/app/admin/DnsEvent;->setId(J)V

    .line 129
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$mincrementEventID(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V

    .line 130
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object p0

    .line 131
    invoke-static {p2}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForDnsEvent(Landroid/app/admin/DnsEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->addSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    return-void
.end method
