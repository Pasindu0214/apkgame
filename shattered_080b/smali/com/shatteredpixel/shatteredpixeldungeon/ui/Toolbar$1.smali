.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->WAIT:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->examining:Z

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->rest(Z)V

    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->examining:Z

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->rest(Z)V

    return v1
.end method
