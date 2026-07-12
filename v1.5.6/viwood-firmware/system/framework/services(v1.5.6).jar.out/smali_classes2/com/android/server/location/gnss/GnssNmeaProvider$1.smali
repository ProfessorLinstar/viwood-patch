.class public Lcom/android/server/location/gnss/GnssNmeaProvider$1;
.super Ljava/lang/Object;
.source "GnssNmeaProvider.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public mNmea:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

.field public final synthetic val$timestamp:J


# direct methods
.method public static synthetic $r8$lambda$RW4x00Pt5uAQTzTKsC9Iup5H5RE(Lcom/android/server/location/gnss/GnssNmeaProvider$1;JLandroid/location/IGnssNmeaListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->lambda$apply$0(JLandroid/location/IGnssNmeaListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssNmeaProvider;J)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    iput-wide p2, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssNmeaProvider;->-$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssNmeaProvider;)Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    const/4 v1, 0x1

    .line 106
    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    .line 105
    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->mNmea:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->-$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssNmeaProvider;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssNmeaProvider;->-$$Nest$fgetmNmeaBuffer(Lcom/android/server/location/gnss/GnssNmeaProvider;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->-$$Nest$fgetmNmeaBuffer(Lcom/android/server/location/gnss/GnssNmeaProvider;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->readNmea([BI)I

    move-result p1

    .line 110
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->-$$Nest$fgetmNmeaBuffer(Lcom/android/server/location/gnss/GnssNmeaProvider;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->mNmea:Ljava/lang/String;

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->val$timestamp:J

    new-instance p1, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNmeaProvider$1;J)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->apply(Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$apply$0(JLandroid/location/IGnssNmeaListener;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->mNmea:Ljava/lang/String;

    invoke-interface {p3, p1, p2, p0}, Landroid/location/IGnssNmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    return-void
.end method
