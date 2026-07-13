.class public final Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;
.super Landroid/credentials/ICredentialManager$Stub;
.source "CredentialManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/CredentialManagerService;


# direct methods
.method public static synthetic $r8$lambda$J7eNdDNWWdYDakEEwXN49Wz2huk(Landroid/credentials/CredentialOption;)Z
    .locals 1

    .line 733
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 734
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$rzrr4GW8zwImXK8NA4m010oXF-E(Landroid/credentials/CredentialOption;)Z
    .locals 1

    .line 742
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 743
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerService;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-direct {p0}, Landroid/credentials/ICredentialManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1058
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting clearCredentialState with callingPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "CredentialManager"

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1063
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v0, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 1066
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v16

    .line 1069
    new-instance v2, Lcom/android/server/credentials/ClearRequestSession;

    iget-object v3, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 1071
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v4}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/credentials/CredentialManagerService;)Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 1073
    invoke-static {v5}, Lcom/android/server/credentials/CredentialManagerService;->access$400(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    const/4 v9, 0x0

    .line 1078
    invoke-static {v8, v0, v6, v9}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v10

    .line 1079
    invoke-virtual {v1, v6}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v11

    .line 1080
    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v14}, Lcom/android/server/credentials/ClearRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IClearCredentialStateCallback;Landroid/credentials/ClearCredentialStateRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 1082
    iget-object v0, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0, v6, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 1086
    iget-object v0, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1088
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    :try_start_0
    const-string v0, "UNKNOWN"

    const-string v4, "No credentials available on this device"

    move-object/from16 v8, p2

    invoke-interface {v8, v0, v4}, Landroid/credentials/IClearCredentialStateCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1094
    const-string v4, "Issue invoking onError on IClearCredentialStateCallback callback: "

    invoke-static {v15, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1101
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    .line 1104
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v16
.end method

.method public executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 789
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting executeCreateCredential with callingPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v15

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 796
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 800
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 801
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v1, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 804
    new-instance v2, Lcom/android/server/credentials/CreateRequestSession;

    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 806
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v4}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/credentials/CredentialManagerService;)Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 808
    invoke-static {v7}, Lcom/android/server/credentials/CredentialManagerService;->access$300(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v1, v5, v9}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v9

    .line 814
    invoke-virtual {v0, v5}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 815
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v11

    .line 816
    invoke-static {v15}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    move-object/from16 v8, p2

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/credentials/CreateRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 818
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v5, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 820
    invoke-virtual {v0, v7, v8, v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->processCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Lcom/android/server/credentials/CreateRequestSession;)V

    return-object v15
.end method

.method public executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    .line 614
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting executeGetCredential with callingPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "CredentialManager"

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v16

    .line 619
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 621
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v0, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 623
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v9}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mvalidateGetCredentialRequest(Lcom/android/server/credentials/CredentialManagerService;Landroid/credentials/GetCredentialRequest;)V

    .line 626
    new-instance v2, Lcom/android/server/credentials/GetRequestSession;

    iget-object v3, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 628
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v4}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/credentials/CredentialManagerService;)Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 630
    invoke-static {v5}, Lcom/android/server/credentials/CredentialManagerService;->access$100(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 635
    invoke-virtual {v9}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v0, v6, v10}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v10

    .line 636
    invoke-virtual {v1, v6}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v11

    .line 637
    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v14}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 639
    iget-object v0, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0, v6, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 642
    invoke-virtual {v1, v9, v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;

    move-result-object v2

    .line 644
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    :try_start_0
    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    const-string v3, "No credentials available on this device."

    move-object/from16 v8, p2

    invoke-interface {v8, v0, v3}, Landroid/credentials/IGetCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Issue invoking onError on IGetCredentialCallback callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->invokeProviderSessions(Ljava/util/List;)V

    return-object v16
.end method

.method public executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p4

    .line 668
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 669
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v16

    .line 671
    invoke-virtual {v9}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 673
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v9}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforcePermissionForAllowedProviders(Lcom/android/server/credentials/CredentialManagerService;Landroid/credentials/GetCredentialRequest;)V

    .line 677
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 679
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v0, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 681
    new-instance v2, Lcom/android/server/credentials/PrepareGetRequestSession;

    iget-object v3, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 683
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v4}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/credentials/CredentialManagerService;)Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 685
    invoke-static {v5}, Lcom/android/server/credentials/CredentialManagerService;->access$200(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 690
    invoke-virtual {v9}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v0, v6, v10}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v10

    .line 691
    invoke-virtual {v1, v6}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v11

    .line 692
    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    move-object/from16 v15, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v15}, Lcom/android/server/credentials/PrepareGetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V

    .line 696
    invoke-virtual {v1, v9, v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;

    move-result-object v2

    .line 698
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    :try_start_0
    new-instance v4, Landroid/credentials/PrepareGetCredentialResponseInternal;

    iget-object v3, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v3}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    .line 701
    invoke-static {v3, v0, v5}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    move-object/from16 v15, p2

    .line 700
    invoke-interface {v15, v4}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Issue invoking onError on IGetCredentialCallback callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    const-string v3, "CredentialManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->invokeProviderSessions(Ljava/util/List;)V

    return-object v16
.end method

.method public final finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/GetCandidateRequestSession;)V
    .locals 2

    .line 851
    iget-object v0, p1, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object v0

    .line 852
    invoke-virtual {p1}, Lcom/android/server/credentials/GetCandidateRequestSession;->getAutofillSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setAutofillSessionId(I)V

    .line 853
    invoke-virtual {p1}, Lcom/android/server/credentials/GetCandidateRequestSession;->getAutofillRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setAutofillRequestId(I)V

    .line 854
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    return-void
.end method

.method public final finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V
    .locals 2

    .line 859
    :try_start_0
    iget-object p0, p1, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object p0

    .line 860
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setCredentialServiceBeginQueryTimeNanoseconds(J)V

    .line 861
    iget-object p1, p1, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 862
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->returnIncrementSequence()I

    move-result p1

    .line 861
    invoke-static {p0, p1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 864
    const-string p1, "CredentialManager"

    const-string v0, "Unexpected error during metric logging: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 534
    const-string v2, "Credential Autofill service does not exist on this device."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting getCandidateCredentials with callingPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CredentialManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 538
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 541
    :try_start_0
    iget-object v5, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v5}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104023d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 543
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 549
    iget-object v6, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object v6

    .line 550
    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    .line 549
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    .line 550
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 551
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 556
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_1

    .line 566
    new-instance v5, Lcom/android/server/credentials/GetCandidateRequestSession;

    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 568
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/credentials/CredentialManagerService;)Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-result-object v7

    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 570
    invoke-static {v2}, Lcom/android/server/credentials/CredentialManagerService;->access$000(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v8

    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v0, v9, v11}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v13

    .line 576
    invoke-virtual {v1, v9}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v14

    .line 577
    invoke-static {v3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v15

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object/from16 v16, p3

    invoke-direct/range {v5 .. v16}, Lcom/android/server/credentials/GetCandidateRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCandidateCredentialsCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;Landroid/os/IBinder;)V

    .line 580
    iget-object v0, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0, v9, v5}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 582
    iget-object v0, v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v6, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;-><init>()V

    .line 586
    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 587
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 583
    invoke-static {v0, v5, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 589
    invoke-virtual {v1, v5}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/GetCandidateRequestSession;)V

    .line 591
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    :try_start_1
    const-string v0, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    const-string v5, "No credentials available on this device."

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v5}, Landroid/credentials/IGetCandidateCredentialsCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Issue invoking onError on IGetCredentialCallback callback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->invokeProviderSessions(Ljava/util/List;)V

    return-object v3

    .line 557
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not the device\'s credential autofill package."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Couldn\'t determine the identity of the caller."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 561
    :catch_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCredentialProviderServices(II)Ljava/util/List;
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mverifyGetProvidersPermission(Lcom/android/server/credentials/CredentialManagerService;)V

    .line 994
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 995
    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_PROVIDER_SERVICES:Lcom/android/server/credentials/metrics/ApiName;

    sget-object v2, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {v1, v2, v0}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 998
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object p0

    .line 1001
    invoke-static {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    .line 999
    invoke-static {v0, p1, p2, v1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCredentialProviderServicesForTesting(I)Ljava/util/List;
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mverifyGetProvidersPermission(Lcom/android/server/credentials/CredentialManagerService;)V

    .line 1010
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1011
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 1012
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object p0

    .line 1013
    invoke-static {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    .line 1011
    invoke-static {v1, v0, p1, v2, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServicesForTesting(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getEnabledProvidersForUser(I)Ljava/util/Set;
    .locals 7

    .line 1031
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getEnabledProvidersForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    .line 1030
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1035
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1036
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;

    move-result-object p0

    .line 1037
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "credential_service"

    .line 1036
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1040
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1041
    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1042
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    .line 1043
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1045
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final invokeProviderSessions(Ljava/util/List;)V
    .locals 0

    .line 781
    new-instance p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnabledCredentialProviderService with componentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 955
    iget-object v3, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v3, p2, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 967
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object p0

    .line 981
    sget-object p2, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p2, v0, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 987
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 968
    :cond_1
    const-string p0, "isEnabledCredentialProviderService component name does not match requested component"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p0, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 976
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "provided component name does not match does not match requesting component"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isServiceEnabled()Z
    .locals 4

    .line 1018
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1020
    :try_start_0
    const-string p0, "credential_manager"

    const-string v2, "enable_credential_manager"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1026
    throw p0
.end method

.method public final prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;
    .locals 3

    .line 729
    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda2;-><init>()V

    .line 732
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 737
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 740
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda3;-><init>()V

    .line 741
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 746
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 748
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 751
    invoke-static {v1, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mgetFilteredResultFromRegistry(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 749
    invoke-static {v1, p2, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessionsWithActiveContainers(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/GetRequestSession;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 756
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;-><init>()V

    .line 757
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 758
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 754
    invoke-static {v1, p2, p1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 760
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 761
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 762
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 764
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 770
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;-><init>()V

    .line 771
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 772
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 768
    invoke-static {v0, p2, p1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 775
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    return-object p1
.end method

.method public final processCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Lcom/android/server/credentials/CreateRequestSession;)V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 830
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p3, p1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 832
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    :try_start_0
    const-string v0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    const-string v1, "No create options available."

    invoke-interface {p2, v0, v1}, Landroid/credentials/ICreateCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 838
    const-string v0, "CredentialManager"

    const-string v1, "Issue invoking onError on ICreateCredentialCallback callback: "

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    .line 847
    new-instance p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .locals 2

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerCredentialDescription with callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 1121
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p0

    .line 1123
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->executeRegisterRequest(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V

    return-void

    .line 1115
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Feature not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V
    .locals 11

    .line 872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 873
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mhasWriteSecureSettingsPermission(Lcom/android/server/credentials/CredentialManagerService;)Z

    move-result v0

    const-string v2, "Issue with invoking response: "

    const-string v3, "CredentialManager"

    if-nez v0, :cond_0

    .line 875
    :try_start_0
    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p0, p1, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 878
    const-string/jumbo p0, "permission_denied"

    const-string p1, "Caller is missing WRITE_SECURE_SETTINGS permission"

    invoke-interface {p4, p0, p1}, Landroid/credentials/ISetEnabledProvidersCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 881
    sget-object p1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p1, p2, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 884
    invoke-static {v3, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 891
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 892
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v9, "setEnabledProviders"

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, p3

    .line 890
    invoke-static/range {v4 .. v10}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 899
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 900
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 902
    iget-object p2, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 903
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v4, "credential_service"

    .line 905
    const-string v5, ":"

    invoke-static {v5, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {p2, v4, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    .line 908
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 909
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "credential_service_primary"

    .line 911
    invoke-static {v5, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p2, :cond_1

    if-nez p0, :cond_2

    .line 915
    :cond_1
    const-string p0, "Failed to store setting containing enabled or primary providers"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :try_start_1
    sget-object p1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p1, p2, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 920
    const-string p1, "failed_setting_store"

    invoke-interface {p4, p1, p0}, Landroid/credentials/ISetEnabledProvidersCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 934
    :cond_2
    :try_start_2
    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p0, p1, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 937
    invoke-interface {p4}, Landroid/credentials/ISetEnabledProvidersCallback;->onResponse()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 939
    sget-object p1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p1, p2, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 942
    invoke-static {v3, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 924
    sget-object p1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p1, p2, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 927
    const-string p1, "Issue with invoking error response: "

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .locals 2

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCredentialDescription with callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 1141
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p0

    .line 1143
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->executeUnregisterRequest(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V

    return-void

    .line 1135
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Feature not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
