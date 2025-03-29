.class public final Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$4;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->examining:Z

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->examineCell(Ljava/lang/Integer;)V

    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "examine_prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
