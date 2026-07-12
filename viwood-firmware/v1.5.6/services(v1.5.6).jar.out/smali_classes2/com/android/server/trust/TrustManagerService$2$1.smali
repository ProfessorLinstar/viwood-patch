.class public Lcom/android/server/trust/TrustManagerService$2$1;
.super Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;
.source "TrustManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/trust/TrustManagerService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService$2;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {p0}, Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setInSignificantPlace(Z)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmIsInSignificantPlace(Lcom/android/server/trust/TrustManagerService;Z)V

    return-void
.end method
