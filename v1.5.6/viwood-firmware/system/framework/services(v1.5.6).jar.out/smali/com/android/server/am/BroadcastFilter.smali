.class public final Lcom/android/server/am/BroadcastFilter;
.super Landroid/content/IntentFilter;
.source "BroadcastFilter.java"


# static fields
.field static final RESTRICT_PRIORITY_VALUES:J = 0x1621ba81L


# instance fields
.field public final exported:Z

.field public final featureId:Ljava/lang/String;

.field public final initialPriority:I

.field public final instantApp:Z

.field public final owningUid:I

.field public final owningUserId:I

.field public final packageName:Ljava/lang/String;

.field public final receiverId:Ljava/lang/String;

.field public final receiverList:Lcom/android/server/am/ReceiverList;

.field public final requiredPermission:Ljava/lang/String;

.field public final visibleToInstantApp:Z


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZLandroid/content/pm/ApplicationInfo;Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 64
    iput-object p2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 65
    iput-object p3, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/android/server/am/BroadcastFilter;->featureId:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 69
    iput p7, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 70
    iput p8, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 71
    iput-boolean p9, p0, Lcom/android/server/am/BroadcastFilter;->instantApp:Z

    .line 72
    iput-boolean p10, p0, Lcom/android/server/am/BroadcastFilter;->visibleToInstantApp:Z

    .line 73
    iput-boolean p11, p0, Lcom/android/server/am/BroadcastFilter;->exported:Z

    .line 74
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastFilter;->initialPriority:I

    .line 75
    invoke-static {p7, p1, p12, p13}, Lcom/android/server/am/BroadcastFilter;->calculateAdjustedPriority(IILandroid/content/pm/ApplicationInfo;Lcom/android/server/compat/PlatformCompat;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void
.end method

.method public static calculateAdjustedPriority(IILandroid/content/pm/ApplicationInfo;Lcom/android/server/compat/PlatformCompat;)I
    .locals 4

    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/32 v2, 0x1621ba81

    .line 140
    :try_start_0
    invoke-virtual {p3, v2, v3, p2}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x3e8

    if-lt p1, p0, :cond_1

    const/16 p0, 0x3e7

    return p0

    :cond_1
    const/16 p0, -0x3e8

    if-gt p1, p0, :cond_2

    const/16 p0, -0x3e7

    return p0

    :cond_2
    return p1

    :catchall_0
    move-exception p0

    .line 145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    throw p0
.end method


# virtual methods
.method public dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requiredPermission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastFilter;->initialPriority:I

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "initialPriority="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->initialPriority:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 96
    invoke-super {p0, p1, v0, v1}, Landroid/content/IntentFilter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 97
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide v1, 0x10900000002L

    .line 98
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000004L

    .line 101
    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 118
    invoke-super {p0, p2, p3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getReceiverClassName()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x40

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    const-string v1, "BroadcastFilter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    iget v2, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v2, "/u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v2, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
