.class public final synthetic Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->$r8$lambda$4NHpfRXNSqkyR96RLPGoHeG_OGc(Ljava/lang/Object;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method
