.class public Lcom/android/server/appfunctions/ServiceConfigImpl;
.super Ljava/lang/Object;
.source "ServiceConfigImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/ServiceConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecuteAppFunctionCancellationTimeoutMillis()J
    .locals 3

    .line 30
    const-string p0, "execute_app_function_cancellation_timeout_millis"

    const-wide/16 v0, 0x1388

    const-string v2, "appfunctions"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
