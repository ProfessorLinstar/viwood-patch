.class public Lcom/android/server/audio/ServiceHolder$1;
.super Landroid/os/IServiceCallback$Stub;
.source "ServiceHolder.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/ServiceHolder;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/ServiceHolder;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder$1;->this$0:Lcom/android/server/audio/ServiceHolder;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/audio/ServiceHolder$1;->this$0:Lcom/android/server/audio/ServiceHolder;

    invoke-static {p0, p2}, Lcom/android/server/audio/ServiceHolder;->-$$Nest$monServiceInited(Lcom/android/server/audio/ServiceHolder;Landroid/os/IBinder;)Landroid/os/IInterface;

    return-void
.end method
