.class public Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;
.super Ljava/lang/Object;
.source "FontManagerService.java"

# interfaces
.implements Lcom/android/server/graphics/fonts/FontManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;->this$0:Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerializedSystemFontMap()Landroid/os/SharedMemory;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;->this$0:Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-static {v0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->-$$Nest$fgetmServiceStarted(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 160
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;->this$0:Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-static {p0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->-$$Nest$fgetmService(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)Lcom/android/server/graphics/fonts/FontManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getCurrentFontMap()Landroid/os/SharedMemory;

    move-result-object p0

    return-object p0
.end method
