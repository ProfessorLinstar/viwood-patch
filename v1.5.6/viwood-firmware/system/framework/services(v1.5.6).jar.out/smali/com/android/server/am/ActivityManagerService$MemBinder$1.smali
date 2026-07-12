.class public Lcom/android/server/am/ActivityManagerService$MemBinder$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$MemBinder;)V
    .locals 0

    .line 2166
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 8

    .line 2175
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "  "

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;ZLjava/io/PrintWriter;Z)V

    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 2170
    const-string p3, "-a"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method
