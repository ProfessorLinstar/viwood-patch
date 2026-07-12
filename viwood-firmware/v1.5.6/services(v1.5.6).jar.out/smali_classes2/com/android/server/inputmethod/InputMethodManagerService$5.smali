.class public Lcom/android/server/inputmethod/InputMethodManagerService$5;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 6050
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 6093
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public final dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V
    .locals 7

    .line 6098
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6103
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 6104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0x45434152544d4d49L    # 4.655612620334995E25

    const-wide v5, 0x10600000001L

    .line 6105
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10600000003L

    .line 6107
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x20b00000002L

    .line 6109
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 6111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 6110
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10900000002L

    .line 6112
    const-string p1, "InputMethodManagerService.mPriorityDumper#dumpAsProtoNoCheck"

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6114
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-wide v3, 0x10b00000003L

    invoke-static {p0, v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpDebug(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/proto/ProtoOutputStream;J)V

    .line 6115
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6116
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 6059
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V

    return-void

    .line 6061
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 6071
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 6081
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$5;->dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V

    return-void

    .line 6083
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method
