.class public Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;
.super Ljava/lang/Object;
.source "SecurityLogSource.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;


# direct methods
.method public static synthetic $r8$lambda$Ot37V1FkWPG4P8eATwgdx5z2QoU(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .locals 0

    .line 95
    invoke-static {p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForSecurityEvent(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fDIaKa09JC15dEtjUjrhxeqNYN8(Landroid/app/admin/SecurityLog$SecurityEvent;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;Lcom/android/server/security/intrusiondetection/SecurityLogSource-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;-><init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda0;-><init>()V

    .line 94
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda1;-><init>()V

    .line 95
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 96
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 97
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->-$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->addBatchData(Ljava/util/List;)V

    return-void

    .line 88
    :cond_1
    :goto_0
    const-string p0, "IntrusionDetection SecurityLogSource"

    const-string p1, "No events received; caller may not be authorized"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
