.class public final Lcom/android/server/wm/SynchedDeviceConfig;
.super Ljava/lang/Object;
.source "SynchedDeviceConfig.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mDeviceConfigEntries:Ljava/util/Map;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mNamespace:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$wnSiPqxpYWD7zDbmlb4cH3CKru0(Lcom/android/server/wm/SynchedDeviceConfig;Ljava/lang/String;Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SynchedDeviceConfig;->lambda$updateFlags$0(Ljava/lang/String;Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/wm/SynchedDeviceConfig;)Lcom/android/server/wm/SynchedDeviceConfig;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SynchedDeviceConfig;->start()Lcom/android/server/wm/SynchedDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateFlags(Lcom/android/server/wm/SynchedDeviceConfig;)Lcom/android/server/wm/SynchedDeviceConfig;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SynchedDeviceConfig;->updateFlags()Lcom/android/server/wm/SynchedDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/Map;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mNamespace:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mExecutor:Ljava/util/concurrent/Executor;

    .line 52
    iput-object p3, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mDeviceConfigEntries:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/Map;Lcom/android/server/wm/SynchedDeviceConfig-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SynchedDeviceConfig;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/Map;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;
    .locals 2

    .line 45
    new-instance v0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/server/wm/SynchedDeviceConfig-IA;)V

    return-object v0
.end method


# virtual methods
.method public getFlagValue(Ljava/lang/String;)Z
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mDeviceConfigEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$mgetValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Z

    move-result p0

    return p0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected flag name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isBuildTimeFlagEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mDeviceConfigEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    if-eqz p0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$misBuildTimeFlagEnabled(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Z

    move-result p0

    return p0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected flag name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isDeviceConfigFlagEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mNamespace:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$updateFlags$0(Ljava/lang/String;Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)V
    .locals 1

    .line 82
    invoke-static {p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$fgetmDefaultValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Z

    move-result v0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->isDeviceConfigFlagEnabled(Ljava/lang/String;Z)Z

    move-result p0

    .line 82
    invoke-static {p2, p0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$mupdateValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;Z)V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mDeviceConfigEntries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    .line 58
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$fgetmFlagKey(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$fgetmFlagKey(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$fgetmDefaultValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->-$$Nest$mupdateValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final start()Lcom/android/server/wm/SynchedDeviceConfig;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mNamespace:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-object p0
.end method

.method public final updateFlags()Lcom/android/server/wm/SynchedDeviceConfig;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mDeviceConfigEntries:Ljava/util/Map;

    new-instance v1, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SynchedDeviceConfig;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method
