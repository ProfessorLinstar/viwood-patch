.class public Lcom/android/server/tracing/TracingServiceProxy$1;
.super Landroid/tracing/ITracingServiceProxy$Stub;
.source "TracingServiceProxy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-direct {p0}, Landroid/tracing/ITracingServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyTraceSessionEnded(Z)V
    .locals 4

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 111
    iget-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-static {p1}, Lcom/android/server/tracing/TracingServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/tracing/TracingServiceProxy;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "should_notify_trace_session_ended"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-static {p0}, Lcom/android/server/tracing/TracingServiceProxy;->-$$Nest$mnotifyTraceur(Lcom/android/server/tracing/TracingServiceProxy;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-static {p0}, Lcom/android/server/tracing/TracingServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/tracing/TracingServiceProxy;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public reportTrace(Landroid/tracing/TraceReportParams;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-static {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->-$$Nest$mreportTrace(Lcom/android/server/tracing/TracingServiceProxy;Landroid/tracing/TraceReportParams;)V

    return-void
.end method
