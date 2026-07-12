.class public final Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;
.super Ljava/lang/Object;
.source "PluginStorage.java"


# instance fields
.field public final mListeners:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;-><init>()V

    return-void
.end method
