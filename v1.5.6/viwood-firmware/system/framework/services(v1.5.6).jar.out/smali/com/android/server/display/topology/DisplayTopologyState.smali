.class public Lcom/android/server/display/topology/DisplayTopologyState;
.super Ljava/lang/Object;
.source "DisplayTopologyState.java"


# instance fields
.field public topology:Ljava/util/List;

.field public version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/DisplayTopologyState;
    .locals 4

    .line 33
    new-instance v0, Lcom/android/server/display/topology/DisplayTopologyState;

    invoke-direct {v0}, Lcom/android/server/display/topology/DisplayTopologyState;-><init>()V

    const/4 v1, 0x0

    .line 35
    const-string/jumbo v2, "version"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/DisplayTopologyState;->setVersion(I)V

    .line 40
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "topology"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-static {p0}, Lcom/android/server/display/topology/Topology;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Topology;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    return-object v0

    .line 54
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayTopologyState is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getTopology()Ljava/util/List;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/server/display/topology/DisplayTopologyState;->topology:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/topology/DisplayTopologyState;->topology:Ljava/util/List;

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/topology/DisplayTopologyState;->topology:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public hasVersion()Z
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setVersion(I)V
    .locals 0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    return-void
.end method

.method public write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/display/topology/DisplayTopologyState;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, " version=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/display/topology/DisplayTopologyState;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 64
    const-string v0, "\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 66
    :cond_0
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->increaseIndent()V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/topology/Topology;

    .line 69
    const-string/jumbo v2, "topology"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/topology/Topology;->write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->decreaseIndent()V

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
