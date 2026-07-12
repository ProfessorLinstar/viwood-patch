.class public Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1039
    invoke-static {}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPostGcMemorySnapshot()V

    return-void
.end method
