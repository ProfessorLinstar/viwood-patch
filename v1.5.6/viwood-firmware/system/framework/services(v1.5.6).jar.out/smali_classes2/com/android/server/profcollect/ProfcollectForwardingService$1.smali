.class public Lcom/android/server/profcollect/ProfcollectForwardingService$1;
.super Lcom/android/server/profcollect/IProviderStatusCallback$Stub;
.source "ProfcollectForwardingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Lcom/android/server/profcollect/IProviderStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderReady()V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$fgetmHandler(Lcom/android/server/profcollect/ProfcollectForwardingService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
