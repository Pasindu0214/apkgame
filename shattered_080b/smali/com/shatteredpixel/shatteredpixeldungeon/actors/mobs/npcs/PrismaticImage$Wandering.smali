.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage$Wandering;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;
.source "PrismaticImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wandering"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;

    .line 2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PrismaticGuard;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PrismaticGuard;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v0, v0

    .line 4
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PrismaticGuard;->HP:F

    .line 5
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p2

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 8
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_teleport.mp3"

    .line 9
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;->act(ZZ)Z

    move-result p1

    return p1
.end method
