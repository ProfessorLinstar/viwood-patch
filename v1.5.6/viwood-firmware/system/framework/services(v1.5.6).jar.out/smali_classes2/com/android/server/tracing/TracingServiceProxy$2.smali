.class Lcom/android/server/tracing/TracingServiceProxy$2;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "TracingServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/os/IMessenger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$2;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public getRequestTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x2710

    return-wide v0
.end method
