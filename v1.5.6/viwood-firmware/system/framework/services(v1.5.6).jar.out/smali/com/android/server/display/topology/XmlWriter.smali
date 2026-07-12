.class public Lcom/android/server/display/topology/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public indent:I

.field public out:Ljava/io/PrintWriter;

.field public outBuffer:Ljava/lang/StringBuilder;

.field public startLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    const-class v0, Lcom/android/server/display/topology/XmlWriter;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/server/display/topology/XmlWriter;->out:Ljava/io/PrintWriter;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    return-void
.end method

.method public static write(Lcom/android/server/display/topology/XmlWriter;Lcom/android/server/display/topology/DisplayTopologyState;)V
    .locals 1

    .line 58
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 60
    const-string v0, "displayTopologyState"

    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/topology/DisplayTopologyState;->write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/topology/XmlWriter;->printXml()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/display/topology/XmlWriter;->out:Ljava/io/PrintWriter;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public decreaseIndent()V
    .locals 1

    .line 43
    iget v0, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    return-void
.end method

.method public increaseIndent()V
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    .line 25
    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 26
    :cond_0
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 27
    iget-boolean v2, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    if-eqz v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/display/topology/XmlWriter;->printIndent()V

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 31
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final printIndent()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 18
    :goto_0
    iget v2, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    if-ge v1, v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    return-void
.end method

.method public printXml()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/server/display/topology/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
