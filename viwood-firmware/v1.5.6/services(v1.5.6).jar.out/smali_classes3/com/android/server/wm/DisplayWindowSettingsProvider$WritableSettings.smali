.class public final Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;
.super Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;
.source "DisplayWindowSettingsProvider.java"


# instance fields
.field public final mSettingsStorage:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;

.field public final mVirtualDisplayIdentifiers:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V
    .locals 1

    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    .line 300
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    .line 305
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mSettingsStorage:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;

    return-void
.end method


# virtual methods
.method public clearDisplaySettings(Landroid/view/DisplayInfo;)V
    .locals 1

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .locals 3

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    if-eqz v1, :cond_0

    return-object v1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    if-eqz v1, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->writeSettings()V

    return-object v1

    .line 325
    :cond_1
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>()V

    .line 326
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 330
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public onDisplayRemoved(Landroid/view/DisplayInfo;)V
    .locals 1

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    .line 349
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 352
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeStaleDisplaySettings(Ljava/util/Set;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->writeSettings()V

    :cond_0
    return-void
.end method

.method public updateSettingsEntry(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
    .locals 1

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->setTo(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 338
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->writeSettings()V

    :cond_0
    return-void
.end method

.method public final writeSettings()V
    .locals 6

    .line 369
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider-IA;)V

    .line 370
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mIdentifierType:I

    iput v1, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    .line 371
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 373
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mSettingsStorage:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;

    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->-$$Nest$smwriteSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    return-void
.end method
