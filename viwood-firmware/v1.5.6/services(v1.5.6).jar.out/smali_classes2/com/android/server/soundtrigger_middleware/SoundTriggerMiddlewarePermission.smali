.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewarePermission.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# direct methods
.method public static bridge synthetic -$$Nest$menforcePermissionsForPreflight(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 74
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const/16 p3, 0x10

    .line 148
    invoke-static {p1, p3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 147
    const-string p2, "Failed to obtain permission %s for identity %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-static {p0, p1, p2}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 187
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected perimission check result."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const/16 v0, 0x10

    .line 185
    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 184
    const-string p2, "Failed to obtain permission %s for identity %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static enforceSoundTriggerRecordAudioPermissionForDataDelivery(Landroid/media/permission/Identity;Ljava/lang/String;)V
    .locals 4

    .line 154
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 155
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 156
    iget v1, p0, Landroid/media/permission/Identity;->uid:I

    iget-object v2, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->checkSoundTriggerRecordAudioPermissionForDataDelivery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const/16 v0, 0x10

    .line 161
    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 160
    const-string v0, "Failed to obtain permission RECORD_AUDIO for identity %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getIdentity()Landroid/media/permission/Identity;
    .locals 1

    .line 108
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 2

    .line 89
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->getIdentity()Landroid/media/permission/Identity;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    .line 91
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)V

    .line 92
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v0, p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v0, :cond_0

    .line 195
    check-cast p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public enforcePermissionsForDataDelivery(Landroid/media/permission/Identity;Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforceSoundTriggerRecordAudioPermissionForDataDelivery(Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    return-void
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 3

    .line 80
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->getIdentity()Landroid/media/permission/Identity;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v1, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
