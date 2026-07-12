.class public Lcom/android/server/devicepolicy/FactoryResetter$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "FactoryResetter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/FactoryResetter;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-static {p2}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/FactoryResetter;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Factory reset confirmed by %s, proceeding"

    invoke-static {p1, v0, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-static {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$mfactoryResetInternalUnchecked(Lcom/android/server/devicepolicy/FactoryResetter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 83
    invoke-static {}, Lcom/android/server/devicepolicy/FactoryResetter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "IOException calling underlying systems"

    invoke-static {p1, p0, v0, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
