.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;
    }
.end annotation


# static fields
.field public static last_index:I


# instance fields
.field public alchemyTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

.field public catalogTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

.field public guideTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

.field public notesTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;

    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;-><init>()V

    .line 2
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc8

    goto :goto_0

    :cond_0
    const/16 v2, 0x7e

    .line 3
    :goto_0
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x82

    goto :goto_1

    :cond_1
    const/16 v3, 0xb4

    .line 4
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->resize(II)V

    .line 5
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$1;)V

    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->guideTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

    .line 6
    invoke-virtual {v0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->guideTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

    int-to-float v2, v2

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 8
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->guideTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

    .line 9
    iget-object v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 10
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 11
    new-instance v8, Lcom/watabou/noosa/ColorBlock;

    .line 12
    iget v9, v4, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, -0xddddde

    .line 13
    invoke-direct {v8, v9, v10, v11}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 14
    iput v6, v8, Lcom/watabou/noosa/Visual;->y:F

    .line 15
    invoke-virtual {v7, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    const/4 v9, 0x0

    new-array v12, v9, [Ljava/lang/Object;

    const-string v13, "ADVENTURERS_GUIDE.title"

    .line 17
    invoke-static {v8, v13, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x9

    .line 18
    invoke-static {v8, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v8

    const v13, 0xffff44

    .line 19
    invoke-virtual {v8, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 20
    iget v14, v4, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v14, v14

    add-int/lit8 v14, v14, -0x2

    .line 21
    invoke-virtual {v8, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 22
    iget v14, v4, Lcom/watabou/noosa/ui/Component;->width:F

    iget v15, v8, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 23
    iget v13, v8, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v12, 0x41900000    # 18.0f

    sub-float v13, v12, v13

    div-float/2addr v13, v15

    add-float/2addr v13, v10

    .line 24
    invoke-virtual {v8, v14, v13}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 25
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 26
    invoke-virtual {v7, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->height:F

    .line 28
    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v8, v6

    .line 29
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 30
    new-instance v15, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;

    invoke-direct {v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;-><init>(Ljava/lang/String;)V

    .line 31
    iget v14, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 32
    invoke-virtual {v15, v6, v8, v14, v12}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 33
    invoke-virtual {v7, v15}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 34
    iget v14, v15, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v8, v14

    .line 35
    iget-object v14, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->pages:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_2

    .line 36
    :cond_2
    iget v13, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 37
    invoke-virtual {v7, v13, v8}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 38
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 39
    iget v7, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 40
    iget v8, v4, Lcom/watabou/noosa/ui/Component;->height:F

    .line 41
    invoke-virtual {v4, v7, v8}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 42
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;-><init>()V

    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->alchemyTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

    .line 43
    invoke-virtual {v0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 44
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->alchemyTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

    invoke-virtual {v4, v6, v6, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 45
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$1;)V

    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->notesTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;

    .line 46
    invoke-virtual {v0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 47
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->notesTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;

    invoke-virtual {v4, v6, v6, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 48
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->notesTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;

    .line 49
    iget-object v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 50
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 51
    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->getRecords(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    .line 52
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 53
    new-instance v13, Lcom/watabou/noosa/ColorBlock;

    .line 54
    iget v14, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 55
    invoke-direct {v13, v14, v10, v11}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 56
    iput v6, v13, Lcom/watabou/noosa/Visual;->y:F

    .line 57
    invoke-virtual {v7, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v13, v9, [Ljava/lang/Object;

    const-string v14, "keys"

    .line 58
    invoke-static {v1, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    .line 59
    invoke-static {v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v13

    const v14, 0xffff44

    .line 60
    invoke-virtual {v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 61
    iget v14, v4, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v14, v14

    add-int/lit8 v14, v14, -0x2

    .line 62
    invoke-virtual {v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 63
    iget v14, v4, Lcom/watabou/noosa/ui/Component;->width:F

    iget v15, v13, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 64
    iget v5, v13, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float v5, v12, v5

    div-float/2addr v5, v15

    add-float/2addr v5, v10

    .line 65
    invoke-virtual {v13, v14, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 66
    invoke-static {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 67
    invoke-virtual {v7, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 68
    iget v5, v13, Lcom/watabou/noosa/ui/Component;->height:F

    .line 69
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v6

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 70
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;

    .line 71
    new-instance v14, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;

    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v15

    .line 72
    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->desc()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth()I

    move-result v13

    invoke-direct {v14, v15, v9, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;I)V

    .line 73
    iget v9, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 74
    invoke-virtual {v14, v6, v5, v9, v12}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 75
    invoke-virtual {v7, v14}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 76
    iget v9, v14, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v5, v9

    const/4 v9, 0x0

    goto :goto_4

    .line 77
    :cond_4
    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->getRecords(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    .line 78
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 79
    new-instance v9, Lcom/watabou/noosa/ColorBlock;

    .line 80
    iget v13, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 81
    invoke-direct {v9, v13, v10, v11}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 82
    iput v5, v9, Lcom/watabou/noosa/Visual;->y:F

    .line 83
    invoke-virtual {v7, v9}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    const-string v9, "landmarks"

    .line 84
    invoke-static {v1, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x9

    .line 85
    invoke-static {v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const v9, 0xffff44

    .line 86
    invoke-virtual {v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 87
    iget v9, v4, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v9, v9

    add-int/lit8 v9, v9, -0x2

    .line 88
    invoke-virtual {v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 89
    iget v9, v4, Lcom/watabou/noosa/ui/Component;->width:F

    iget v11, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    add-float/2addr v10, v5

    .line 90
    iget v13, v1, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float v13, v12, v13

    div-float/2addr v13, v11

    add-float/2addr v13, v10

    .line 91
    invoke-virtual {v1, v9, v13}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 92
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 93
    invoke-virtual {v7, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 94
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->height:F

    .line 95
    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v5, v1

    .line 96
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;

    .line 97
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v10

    .line 98
    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->desc()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth()I

    move-result v8

    invoke-direct {v9, v10, v11, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;I)V

    .line 99
    iget v8, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 100
    invoke-virtual {v9, v6, v5, v8, v12}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 101
    invoke-virtual {v7, v9}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 102
    iget v8, v9, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v5, v8

    goto :goto_5

    .line 103
    :cond_6
    iget v1, v4, Lcom/watabou/noosa/ui/Component;->width:F

    .line 104
    invoke-virtual {v7, v1, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 105
    iget-object v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$NotesTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 106
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 107
    iget v5, v1, Lcom/watabou/noosa/ui/Component;->height:F

    .line 108
    invoke-virtual {v1, v4, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 109
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$1;)V

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->catalogTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    .line 110
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 111
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->catalogTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    invoke-virtual {v1, v6, v6, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 112
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->catalogTab:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->access$500(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;)V

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 113
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$1;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GUIDE_PAGE:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-direct {v3, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;Lcom/watabou/noosa/Image;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$2;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ALCH_PAGE:I

    invoke-direct {v5, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-direct {v3, v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;Lcom/watabou/noosa/Image;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$3;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    .line 114
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;Lcom/watabou/noosa/Image;)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$4;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WEAPON_HOLDER:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-direct {v5, v0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;Lcom/watabou/noosa/Image;)V

    aput-object v5, v2, v3

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v1, :cond_7

    .line 115
    aget-object v3, v2, v9

    .line 116
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 117
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->layoutTabs()V

    .line 118
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->last_index:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->select(I)V

    return-void
.end method
