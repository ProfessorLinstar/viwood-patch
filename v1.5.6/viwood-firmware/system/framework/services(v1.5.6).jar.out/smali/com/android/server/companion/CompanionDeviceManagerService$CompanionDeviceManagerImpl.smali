.class public Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "CompanionDeviceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public static synthetic $r8$lambda$ZMsfRpQZ2dfhY6xdjBA1Gio0BTI(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .locals 0

    .line 509
    invoke-virtual {p1, p0}, Landroid/companion/AssociationInfo;->isLinkedTo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bKrxs04qGqM4c37Vsn3wxssSYxk(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Ljava/lang/String;IILandroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$requestNotificationAccess$0(Ljava/lang/String;IILandroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .locals 1

    .line 366
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnAssociationsChangedListener_enforcePermission()V

    .line 368
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 370
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->registerRemoteListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    return-void
.end method

.method public addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 0

    .line 412
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnMessageReceivedListener_enforcePermission()V

    .line 414
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    return-void
.end method

.method public addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 387
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportsChangedListener_enforcePermission()V

    .line 389
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public applyRestoredPayload([BI)V
    .locals 2

    .line 751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 754
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmBackupRestoreProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/BackupRestoreProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    return-void

    .line 752
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    .locals 12

    move/from16 v1, p4

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "associate() request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", package=u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_CompanionDeviceManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "create associations"

    invoke-static {v0, v1, p3, v2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSkipRoleGrant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerCanSkipRoleGrant()V

    .line 319
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 321
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v7

    .line 323
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v8, p2

    move-object v2, p3

    .line 319
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    return-void

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p3, v1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V

    return-void
.end method

.method public attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 603
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachSystemDataTransport_enforcePermission()V

    .line 605
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/companion/transport/CompanionTransportManager;->attachSystemDataTransport(ILandroid/os/ParcelFileDescriptor;I)V

    return-void
.end method

.method public buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildAssociationCancellationIntent() package=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "build association cancellation intent"

    invoke-static {v0, p2, p1, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 725
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    .line 726
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 731
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p2, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public final checkCallerCanSkipRoleGrant()V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 710
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 711
    const-class v1, Landroid/app/KeyguardManager;

    .line 712
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 714
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Skipping CDM role grant requires insecure keyguard."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 716
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ASSOCIATE_COMPANION_DEVICES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 718
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Skipping CDM role grant requires ASSOCIATE_COMPANION_DEVICES permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCanCallNotificationApi(Ljava/lang/String;I)V
    .locals 2

    .line 697
    invoke-static {p2, p1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOr(ILjava/lang/String;)V

    .line 699
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 702
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    .line 703
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 702
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "App must have an association before calling this API"

    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 14

    .line 683
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->createAssociation_enforcePermission()V

    .line 685
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v2, p4

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    const-string p0, "CDM_CompanionDeviceManagerService"

    const-string v0, "Given certificate doesn\'t match the package certificate."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 691
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v5

    .line 692
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v3, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    return-void
.end method

.method public detachSystemDataTransport(Ljava/lang/String;II)V
    .locals 0

    .line 611
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->detachSystemDataTransport_enforcePermission()V

    .line 613
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    return-void
.end method

.method public disablePermissionsSync(I)V
    .locals 2

    .line 644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 647
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->disablePermissionsSync(I)V

    return-void

    .line 645
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableSystemDataSync(II)V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->disableSystemDataSync(II)V

    return-void
.end method

.method public disassociate(I)V
    .locals 1

    .line 440
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object p0

    const-string v0, "api"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 772
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "CDM_CompanionDeviceManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/association/AssociationStore;->dump(Ljava/io/PrintWriter;)V

    .line 777
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->dump(Ljava/io/PrintWriter;)V

    .line 778
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppBinder(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->dump(Ljava/io/PrintWriter;)V

    .line 779
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->dump(Ljava/io/PrintWriter;)V

    .line 780
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferRequestStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enablePermissionsSync(I)V
    .locals 2

    .line 636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 639
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->enablePermissionsSync(I)V

    return-void

    .line 637
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableSecureTransport(Z)V
    .locals 0

    .line 619
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->enableSecureTransport_enforcePermission()V

    .line 621
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->enableSecureTransport(Z)V

    return-void
.end method

.method public enableSystemDataSync(II)V
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->enableSystemDataSync(II)V

    return-void
.end method

.method public getAllAssociationsForUser(I)Ljava/util/List;
    .locals 1

    .line 352
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsForUser_enforcePermission()V

    .line 354
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 359
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "get associations"

    invoke-static {v0, p2, p1, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(I)[B
    .locals 2

    .line 743
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 746
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmBackupRestoreProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/BackupRestoreProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    move-result-object p0

    return-object p0

    .line 744
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .locals 2

    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 655
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object p0

    return-object p0

    .line 653
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 9

    .line 761
    new-instance v0, Lcom/android/server/companion/CompanionDeviceShellCommand;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v6}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v7}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmBackupRestoreProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/BackupRestoreProcessor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v8}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/companion/CompanionDeviceShellCommand;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;)V

    .line 765
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 766
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 765
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .locals 2

    .line 490
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;I)V

    .line 491
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 492
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isCompanionApplicationBound(Ljava/lang/String;I)Z
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppBinder(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 499
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->isDeviceAssociatedForWifiConnection_enforcePermission()V

    .line 501
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 508
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isPermissionTransferUserConsented(Ljava/lang/String;II)Z
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->isPermissionTransferUserConsented(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$requestNotificationAccess$0(Ljava/lang/String;IILandroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6

    .line 457
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/utils/PackageUtils;->isRestrictedSettingsAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 458
    const-string p2, "CDM_CompanionDeviceManagerService"

    const-string p4, "Side loaded app must enable restricted setting before request the notification access"

    invoke-static {p2, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p4, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 462
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ecm/EnhancedConfirmationManager;

    const-string p4, "android:access_notifications"

    .line 463
    invoke-virtual {p2, p1, p4}, Landroid/app/ecm/EnhancedConfirmationManager;->createRestrictedSettingDialogIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 470
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 469
    invoke-static {p1, p3, p4}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 473
    :goto_1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v1, 0x0

    const/high16 v3, 0x54000000

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDisassociationProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/DisassociationProcessor;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 517
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStartObservingDevicePresence_enforcePermission()V

    .line 519
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 528
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStopObservingDevicePresence_enforcePermission()V

    .line 530
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifySelfManagedDeviceAppeared(I)V
    .locals 1

    .line 661
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceAppeared_enforcePermission()V

    .line 663
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifySelfManagedDevicePresenceEvent(IZ)V

    return-void
.end method

.method public notifySelfManagedDeviceDisappeared(I)V
    .locals 1

    .line 669
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceDisappeared_enforcePermission()V

    .line 671
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifySelfManagedDevicePresenceEvent(IZ)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 301
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 303
    const-string p1, "CDM_CompanionDeviceManagerService"

    const-string p2, "Error during IPC"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public removeBond(ILjava/lang/String;I)Z
    .locals 2

    .line 557
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeBond_enforcePermission()V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBond() associationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "remove bonds"

    invoke-static {v0, p3, p2, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p2

    .line 566
    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p2

    .line 567
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 573
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 574
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 575
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 576
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result p0

    return p0

    .line 569
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Association id=["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] doesn\'t have a device address."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .locals 1

    .line 377
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnAssociationsChangedListener_enforcePermission()V

    .line 379
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 381
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->unregisterRemoteListener(Landroid/companion/IOnAssociationsChangedListener;)V

    return-void
.end method

.method public removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 0

    .line 421
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnMessageReceivedListener_enforcePermission()V

    .line 423
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->removeListener(ILandroid/companion/IOnMessageReceivedListener;)V

    return-void
.end method

.method public removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 395
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportsChangedListener_enforcePermission()V

    .line 397
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->removeListener(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;
    .locals 6

    .line 446
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v3

    .line 447
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {p0, v2, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;I)V

    .line 451
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    .line 455
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Ljava/lang/String;IILandroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0

    .line 452
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Component name is too long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendMessage(I[B[I)V
    .locals 0

    .line 403
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->sendMessage_enforcePermission()V

    .line 405
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/transport/CompanionTransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    return-void
.end method

.method public setDeviceId(ILandroid/companion/DeviceId;)V
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->setDeviceId(ILandroid/companion/DeviceId;)V

    return-void
.end method

.method public startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .locals 1

    .line 538
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->startObservingDevicePresence_enforcePermission()V

    .line 540
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return-void
.end method

.method public startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmSystemDataTransferProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V

    return-void
.end method

.method public stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .locals 1

    .line 548
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->stopObservingDevicePresence_enforcePermission()V

    .line 550
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return-void
.end method
