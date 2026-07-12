.class public final Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;
.super Ljava/lang/Object;
.source "PluginStorage.java"


# instance fields
.field public final mValues:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmValues(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNonGlobalDisplaysLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->getNonGlobalDisplaysLocked()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->getValueLocked(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->updateValueLocked(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonGlobalDisplaysLocked()Ljava/util/Set;
    .locals 1

    .line 274
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 275
    const-string p0, "GLOBAL"

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getValueLocked(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    const-string v0, "GLOBAL"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final updateValueLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    .line 267
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
