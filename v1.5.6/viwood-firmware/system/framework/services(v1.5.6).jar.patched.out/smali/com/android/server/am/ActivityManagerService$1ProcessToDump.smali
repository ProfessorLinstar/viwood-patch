.class public final Lcom/android/server/am/ActivityManagerService$1ProcessToDump;
.super Ljava/lang/Record;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "processName",
        "thread"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Landroid/app/IApplicationThread;
    }
.end annotation


# instance fields
.field public final processName:Ljava/lang/String;

.field public final thread:Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/IApplicationThread;)V
    .locals 0

    .line 16535
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 16535
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 16535
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerService$1ProcessToDump$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public processName()Ljava/lang/String;
    .locals 0

    .line 16535
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public thread()Landroid/app/IApplicationThread;
    .locals 0

    .line 16535
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 16535
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    const-string/jumbo v1, "processName;thread"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
