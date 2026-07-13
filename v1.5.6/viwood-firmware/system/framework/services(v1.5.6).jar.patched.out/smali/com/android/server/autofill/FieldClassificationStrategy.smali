.class public final Lcom/android/server/autofill/FieldClassificationStrategy;
.super Ljava/lang/Object;
.source "FieldClassificationStrategy.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mQueuedCommands:Ljava/util/ArrayList;

.field public mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$9sWXxX7cfJft1mIYxxD_LwAD8NI(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .locals 1

    move-object v0, p1

    move-object p1, p0

    move-object p0, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v0

    .line 272
    invoke-interface/range {p0 .. p8}, Landroid/service/autofill/IAutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aJEVLsx2mFg0afcVOdCBIjG48zg(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .locals 0

    .line 237
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qj3pLd3hoFDa-51StWU71Om5Tp8(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 80
    iput p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    return-void
.end method


# virtual methods
.method public calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 9

    .line 272
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V

    return-void
.end method

.method public final connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 144
    :try_start_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "running command right away"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto :goto_1

    .line 145
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    invoke-interface {p1, p0}, Lcom/android/server/autofill/FieldClassificationStrategy$Command;->run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 147
    :goto_1
    :try_start_2
    const-string p1, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception calling service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_2
    monitor-exit v0

    return-void

    .line 151
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "service is null; queuing command"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_4

    monitor-exit v0

    return-void

    .line 161
    :cond_4
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_5

    const-string p1, "FieldClassificationStrategy"

    const-string v1, "creating connection"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_5
    new-instance p1, Lcom/android/server/autofill/FieldClassificationStrategy$1;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/FieldClassificationStrategy$1;-><init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V

    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 215
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6

    const-string v1, "FieldClassificationStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p1, :cond_8

    .line 217
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 218
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :try_start_3
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    iget p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 222
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 221
    invoke-virtual {p1, v1, v5, v2, p0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 223
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_7

    const-string p0, "FieldClassificationStrategy"

    const-string p1, "bound"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 225
    :cond_7
    :goto_3
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    throw p0

    .line 228
    :cond_8
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User ID: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 279
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Queued commands: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const-string v2, "N/A"

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 285
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Implementation: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Available algorithms: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Default algorithm: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 297
    const-string p1, "ERROR CALLING SERVICE: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getAvailableAlgorithms()[Ljava/lang/String;
    .locals 2

    .line 236
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.autofill.field_classification.available_algorithms"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultAlgorithm()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.autofill.field_classification.default_algorithm"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;
    .locals 3

    .line 250
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 257
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 264
    invoke-interface {p2, p0, p1}, Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;->get(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error getting application resources for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FieldClassificationStrategy"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 108
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 110
    const-string v2, "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE"

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v3, "FieldClassificationStrategy"

    if-nez p0, :cond_1

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not require permission "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 116
    :cond_1
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getServiceComponentName(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    const-string v2, "FieldClassificationStrategy"

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo p0, "no external services package!"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 92
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.autofill.AutofillFieldClassificationService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x84

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 96
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 97
    :cond_2
    :goto_0
    const-string p0, "No valid components found."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public reset()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 123
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "reset(): unbinding service."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 125
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 128
    :try_start_2
    const-string v2, "FieldClassificationStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_2

    .line 132
    :cond_1
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_2

    const-string p0, "FieldClassificationStrategy"

    const-string/jumbo v1, "reset(): service is not bound. Do nothing."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
